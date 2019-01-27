<?php
class RacePage extends Page {

  private static $db = [
    'HeroTitle' => 'HTMLText',
    'HeroContent' => 'HTMLText'
  ];

  public function getCMSFields() {
    $fields = parent::getCMSFields();

    $fields->addFieldToTab('Root.Main', TextField::create('HeroTitle'),'Content');
    $fields->addFieldToTab('Root.Main', TextField::create('HeroContent'),'Content');

    $DonationsField = GridField::create(
      'Donations',
      'Donations',
      Donation::get()->filter(['Paid' => true]),
      GridFieldConfig_RecordEditor::create()
    );
    $fields->addFieldToTab('Root.Donations', $DonationsField);

    return $fields;
  }

}
class RacePage_Controller extends Page_Controller {

  private static $allowed_actions = [
    'PaymentForm'
  ];

  public function PaymentForm() {
    $fields = new FieldList(
      TextField::create('Name', 'Name*')
        ->setAttribute('required', true)
        ->setAttribute('class', 'form-control'),
      EmailField::create('Email', 'Email*')
        ->setAttribute('required', true)
        ->setAttribute('class', 'form-control'),
      CountrydropdownField::create('Country', 'Country*')
        ->setAttribute('required', true)
        ->setAttribute('class', 'form-control'),
      TextField::create('Donation', 'If you would like to make an additional donation to hihi conservation, please enter the amount here')
                  ->setAttribute('placeholder','Enter Amount here')
                  ->setAttribute('class', 'form-control'),
      CheckboxField::create('Subscribe', 'I would like to receive information from Hihi Society, Hihi Recovery Group and Hihi trust')
        ->setAttribute('class', 'form-check-input'),
      CheckboxField::create('Adult', 'I confirm I am over 18 years of age*')
        ->setAttribute('required', true)
        ->setAttribute('class', 'form-check-input'),
      HiddenField::create('Birds')
      ->setAttribute('class', 'form-birds'),
      HiddenField::create('Total')
      ->setAttribute('class', 'form-total'),
      HiddenField::create('StripeToken'),
      LiteralField::create('TotalLabel', '<h5 class="field">Total Bet: <strong>$<span class="total-cost"></span></strong></h5>'),
      LiteralField::create('Card', '<div id="card" style="clear:both"></div>')
    );

    $actions = new FieldList(
      FormAction::create('pay', 'Submit Payment')
        ->addExtraClass('form-button w-button btn btn-primary')
    );

    $form = new Form($this, 'PaymentForm', $fields, $actions);
    $form->setHTMLID('PaymentForm');

    return $form;
  }

  public function pay($data) {
    $birds = $data['Birds'];
    $token = $data['StripeToken'];

    if (isset($birds) /*&& isset($token)*/) {
      $birds = explode(',', $birds);
      $birdIds = [];

      foreach ($birds as $bird) {
        $id = explode(':', $bird)[0];

        array_push($birdIds, $id);
      }

      $Birds = Bird::get()
        ->filter([
          'ID' => $birdIds
        ]);

      $Donation = new Donation();

      $Donation->IP = $_SERVER['REMOTE_ADDR'];

      $Donation->Name = $data['Name'];
      $Donation->Email = $data['Email'];
      $Donation->Country = $data['Country'];
      $Donation->Subscribe = $data['Subscribe'];
      $Donation->Adult = $data['Adult'];
      $Donation->BetsCount = $data['Birds'];
      $Donation->Total = $data['Total'];

      $Donation->write();

      $Donation->Birds()->addMany($Birds);

      $Donation->pay($token);
    }

    return 'No secure token provided for Stripe, card was not charged';
  }

  public function getLocations() {
    return Location::get();
  }

  public function getBirds() {
    return Birds::get()->filter('Location.ID');
  }

}
