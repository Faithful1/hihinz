<?php


class PrizesPage extends Page {

  private static $db = [
    'HeroTitle' => 'Varchar',
    'HeroContent' => 'HTMLText'
  ];

  // db array marks a field name to a field type
  private static $has_one = [
    'Photo' => 'Image'
  ];

  // add a photo upload field and other fields to the cms
  public function getCMSFields() {
    $fields = parent::getCMSFields();

    $fields->addFieldToTab('Root.Attachments', $photo = UploadField::create('Photo'));

    $fields->addFieldToTab('Root.Main', TextField::create('HeroTitle'),'Content');
    $fields->addFieldToTab('Root.Main', TextField::create('HeroContent'),'Content');

    $SponsorsField = GridField::create(
      'Sponsors',
      'Sponsors',
      Sponsor::get(),
      GridFieldConfig_RecordEditor::create()
    );
    $fields->addFieldToTab('Root.Sponsors', $SponsorsField);

    // use the upload field validator using $photo variable (means giving it a variable and assign something to the variable like we are doing now
    $photo->getValidator()->setAllowedExtensions(array('png','gif','jpg','jpeg'));
    $photo->setFolderName('Sponsors-photos');

    return $fields;
  }

}

class PrizesPage_Controller extends Page_Controller {

  public function getSponsors() {
    return Sponsor::get();
  }

}
