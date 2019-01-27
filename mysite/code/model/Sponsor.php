<?php

class Sponsor extends DataObject {

  private static $db = [
    'Name' => 'Text',
    'Description' => 'Text',
    'Website' => 'Text'
  ];

  private static $has_one = [
    'Image' => 'Image'
  ];

}
