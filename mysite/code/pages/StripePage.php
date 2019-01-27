<?php


class StripePage extends Page {

}

class StripePage_Controller extends Page_Controller {

  private static $allowed_actions = [
    'Form'
  ];

  public function Form() {
    $fields = new FieldList(
      TextField::create('Name'),
      EmailField::create('Email'),
      CountrydropdownField::create('Country'),
      HiddenField::create('StripeToken'),
      LiteralField::create('Card', '<div id="" style="clear:both"></div>')
    );

    $actions = new FieldList(
      FormAction::create('pay', 'Submit')
    );

    $form = new Form($this, 'Form', $fields, $actions);
    $form->setHTMLID('PaymentForm');

    return $form;
  }

  public function pay($data) {
    $token = $data['StripeToken'];

    if (isset($token)) {
      $Donation = new Donation();

      $Donation->IP = $_SERVER['REMOTE_ADDR'];
      $Donation->Name = $data['Names'];
      $Donation->Email = $data['Email'];
      $Donation->Country = $data['Country'];
      $Donation->Total = 40.00;

      $Donation->write();

      $Donation->pay($token);
    }

    return 'No secure token provided for Stripe, card was not charged';
  }

}
