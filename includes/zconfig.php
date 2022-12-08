<?php

  // DB Params
  define('DB_HOST', 'localhost');
  define('DB_USER', 'root');
  define('DB_PASS', '');
  define('DB_NAME', 'logistics');


  //authentication in sending mail
  define('MAIL_PASS', '');

  //set default timezone
  date_default_timezone_set('Asia/Kolkata');

  // App Root
  define('APPROOT', dirname(dirname(__FILE__)));
  // URL Root
  define('URLROOT', 'http://localhost/logistics');
  // Site Name
  define('SITENAME', 'logistics');
  // App Version
  define('APPVERSION', '1.0.0');