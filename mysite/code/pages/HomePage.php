<?php

class HomePage extends Page {


private static $db = [
  'HeroTitle' => 'Varchar',
  'HeroContent' => 'Text',
  'HeroBottom' => 'Text',

  'Title1' => 'Varchar',
  'Content1' => 'HTMLText',

  'Title2' => 'Varchar',
  'Content2' => 'HTMLText',

  'Title4' => 'Varchar',
  'Content4' => 'HTMLText',

  'Title3' => 'Varchar',
  'Content3' => 'HTMLText',
];

  public function getCMSFields() {
    $fields = parent::getCMSFields();

    $LocationsField = GridField::create(
      'Locations',
      'Locations',
      Location::get(),
      GridFieldConfig_RecordEditor::create()
    );


    $fields->addFieldToTab('Root.Locations', $LocationsField);

    $fields->addFieldToTab('Root.Main', TextField::create('HeroTitle'),'Content');
    $fields->addFieldToTab('Root.Main', TextField::create('HeroContent'),'Content');
    $fields->addFieldToTab('Root.Main', TextField::create('HeroBottom'),'Content');

    $fields->addFieldToTab('Root.Main', TextField::create('Title1'),'Content');
    $fields->addFieldToTab('Root.Main', HTMLEditorField::create('Content1'),'Content');

    $fields->addFieldToTab('Root.Main', TextField::create('Title2'),'Content');
    $fields->addFieldToTab('Root.Main', HTMLEditorField::create('Content2'),'Content');

    $fields->addFieldToTab('Root.Main', TextField::create('Title4'),'Content');
    $fields->addFieldToTab('Root.Main', HTMLEditorField::create('Content4'),'Content');

    $fields->addFieldToTab('Root.Main', TextField::create('Title3'),'Content');
    $fields->addFieldToTab('Root.Main', HTMLEditorField::create('Content3'),'Content');

    return $fields;
  }

}

class HomePage_Controller extends Page_Controller {
  public function getLocations() {
    return Location::get();
  }
}
