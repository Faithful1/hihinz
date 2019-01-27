<?php

class RulesPage extends Page {


  private static $db = [
     'HeroTitle' => 'Varchar',
     'HeroContent' => 'HTMLText'
   ];

   //add a content pages cms
   public function getCMSFields() {
     $fields = parent::getCMSFields();

     $fields->addFieldToTab('Root.Main', TextField::create('HeroTitle'),'Content');
     $fields->addFieldToTab('Root.Main', TextField::create('HeroContent'),'Content');
     return $fields;
   }
 }

class RulesPage_Controller extends Page_Controller {

  }
