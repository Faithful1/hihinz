<?php

class TeamPage extends Page {

  private static $db = [
   'Fullname' => 'Text',
   'Position' => 'Text',
 ];

 private static $has_one = array (
        'Photo' => 'Image',
    );

 private static $can_be_root = false;


 public function getCMSFields() {
    $fields = parent::getCMSFields();

    $fields->addFieldToTab('Root.Main', TextField::create('Fullname','Full name'),'Content');
    $fields->addFieldToTab('Root.Main', TextField::create('Position','Position of team member'),'Content');
    $fields->addFieldToTab('Root.Attachments', $photo = UploadField::create('Photo'));

    $photo->setFolderName('team-photos')
    ->getValidator()->setAllowedExtensions(['jpg','png','gif','jpeg']);

    return $fields;
  }

}


class TeamPage_Controller extends Page_Controller {


  }
