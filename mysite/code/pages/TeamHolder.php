<?php

class TeamHolder extends Page {

   private static $allowed_children = [
     'TeamPage'
    ];


    private static $has_one = array (
           'Charter' => 'File'
       );

    private static $can_be_root = true;

    public function getCMSFields() {
       $fields = parent::getCMSFields();

       $fields->addFieldToTab('Root.Attachments', $charter = UploadField::create(
               'Charter',
               'Society Charter, optional (PDF only)'
             ));


       $charter->setFolderName('charters')
               ->getValidator()->setAllowedExtensions(array('pdf'));

                return $fields;
  }
}
