<?php

class ResearchPage extends Page {

  private static $db = [
    'HeroTitle' => 'Varchar',
    'Title1' => 'Varchar',
    'Title2' => 'Varchar',

    'HeroContent' => 'HTMLText',
    'Content1' => 'HTMLText'
  ];

  //add a content pages cms
  public function getCMSFields() {
    $fields = parent::getCMSFields();

    $fields->addFieldToTab('Root.Main', TextField::create('HeroTitle'),'Content');
    $fields->addFieldToTab('Root.Main', TextField::create('Title1'),'Content');
    $fields->addFieldToTab('Root.Main', TextField::create('Title2'),'Content');

    $fields->addFieldToTab('Root.Main', HTMLEditorField::create('HeroContent'),'Content');
    $fields->addFieldToTab('Root.Main', HTMLEditorField::create('Content1'),'Content');

    return $fields;
  }
}

class ResearchPage_Controller extends Page_Controller {

}
