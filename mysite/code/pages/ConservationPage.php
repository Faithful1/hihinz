<?php

class ConservationPage extends Page {

  private static $db = [
   'HeroTitle' => 'Varchar',
   'Title2' => 'Varchar',
   'Title3' => 'Varchar',
   'Title4' => 'Varchar',

    'Content1' => 'HTMLText',
    'Content2' => 'HTMLText',
    'Content3' => 'HTMLText'
  ];

  //add a content pages cms
  public function getCMSFields() {
    $fields = parent::getCMSFields();

    $fields->addFieldToTab('Root.Main', TextField::create('HeroTitle'),'Content');
    $fields->addFieldToTab('Root.Main', TextField::create('Title2'),'Content');
    $fields->addFieldToTab('Root.Main', TextField::create('Title3'),'Content');
    $fields->addFieldToTab('Root.Main', TextField::create('Title4'),'Content');

    $fields->addFieldToTab('Root.Main', TextField::create('Content1'),'Content');
    $fields->addFieldToTab('Root.Main', HTMLEditorField::create('Content2'),'Content');
    $fields->addFieldToTab('Root.Main', HTMLEditorField::create('Content3'),'Content');

    return $fields;
  }
}

class ConservationPage_Controller extends Page_Controller {

}
