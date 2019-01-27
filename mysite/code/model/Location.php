<?php
class Location extends DataObject {
  private static $db = [
    'Name' => 'Varchar',
    'Description' => 'Text',
    'Photoby' => 'Varchar'
  ];
  private static $has_one = [
    'Image' => 'Image'
  ];

  private static $summary_fields = [
    'GridThumbnail' => '',
    'Name' => 'Name of Location',
    'Description' => 'About this location'
  ];

  public function getGridThumbnail() {
    if($this->Image()->exists()) {
      return $this->Image()->SetWidth(100);
    }
    return ('no image');
  }

  private static $has_many = [
    'Birds' => 'Bird'
  ];
  
}
