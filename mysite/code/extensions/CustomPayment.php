<?php

class CustomPayment extends DataExtension {

  private static $has_one = [
    'Donation' => 'Donation'
  ];

  public function onCaptured() {
    $Donation = $this->owner->Donation();
    $Donation->Paid = 1;
    $Donation->write();
  }

}
