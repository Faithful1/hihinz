<?php

class ProductsHolder extends Page {

  private static $db = [
    'HeroTitle' => 'Text',
    'HeroContent' => 'Text',

    'SectionTitle' => 'Text',
  ];

  public function getCMSFields() {
    $fields = parent::getCMSFields();
    $fields->addFieldToTab('Root.Main', TextField::create('HeroTitle','Hero Title'),'Content');
    $fields->addFieldToTab('Root.Main', TextField::create('HeroContent','Hero Content'),'Content');
    $fields->addFieldToTab('Root.Main', TextField::create('SectionTitle','Section Title'),'Content');

    $ProductsField = GridField::create(
      'Products',
      'Products',
      Product::get(),
      GridFieldConfig_RecordEditor::create()
    );
    $fields->addFieldToTab('Root.Products', $ProductsField);

    return $fields;
  }
}

class ProductsHolder_Controller extends Page_Controller {

  public function getProducts() {
    return Product::get();
  }

}
