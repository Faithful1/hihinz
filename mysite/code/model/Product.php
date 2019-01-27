<?php

class Product extends DataObject {

  private static $db = [
    'Name' => 'Text',
    'Price' => 'Currency'
  ];

  private static $has_one = [
    'Image' => 'Image'
  ];

}
