<?php

class Bird extends DataObject {

  private static $db = [
    'Code' => 'Varchar',
    'Description' => 'Text',
  ];

  private static $has_one = [
    'Location' => 'Location',
    'Image' => 'Image'
  ];

  public static $belongs_many_many = [
    'Donations' => 'Donation'
  ];

  private static $summary_fields = [
    'Code' => 'Code',
    'Description' => 'Bird description',
    'getBetsCount' => 'Bets'
  ];

  public function getBetsCount() {
    $BetsCount = 0;
    $Donations = $this->Donations();

    foreach($Donations as $Donation) {
      $birds = $Donation->BetsCount;
      $birds = explode(',', $birds);

      foreach ($birds as $bird) {
        $id = explode(':', $bird)[0];
        $count = explode(':', $bird)[1];

        if ($id == $this->ID) $BetsCount = $BetsCount + $count;
      }
    }

    return $BetsCount;
  }
}
