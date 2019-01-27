<?php

use SilverStripe\Omnipay\Service\ServiceFactory;


class Donation extends DataObject {

  private static $db = [
    'IP' => 'Text',
    'Name' => 'Text',
    'Email' => 'Text',
    'Country' => 'Text',
    'Paid' => 'Boolean',
    'Subscribe' => 'Boolean',
    'Adult' => 'Boolean',
    'BetsCount' => 'Text',
    'Total' => 'Currency'
  ];

  private static $many_many = [
    'Birds' => 'Bird'
  ];

  private static $summary_fields = [
    'Name' => 'Name',
    'Email' => 'Email',
    'Country' => 'Country',
    'Subscribe' => 'Subscribe',
    'Adult' => 'Adult',
    'Total' => 'Total'
  ];

  public function pay($token) {
    $payment = Payment::create()
      ->init('Stripe', $this->Total, 'NZD')
      ->setSuccessUrl('/payment-success')
      ->setFailureUrl('/payment-error');

    $payment->DonationID = $this->ID;

    $service = ServiceFactory::create()
      ->getService($payment, ServiceFactory::INTENT_PURCHASE);

    $response = $service
      ->initiate([
        'token' => $token
      ]);

    return $response
      ->redirectOrRespond();
  }
}
