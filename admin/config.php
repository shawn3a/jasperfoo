<?php

define('AAA_SITE', 'jasperfoo');
define('AAA_CATE', 'catalogue');

// HTTP
define('HTTP_SERVER', 'http://' . $_SERVER['HTTP_HOST'] . rtrim(dirname($_SERVER['SCRIPT_NAME']), '/.\\') . '/');
define('HTTP_CATALOG', substr(HTTP_SERVER, 0, strlen(HTTP_SERVER)-6));
// HTTPS
define('HTTPS_SERVER', 'http://' . $_SERVER['HTTP_HOST'] . rtrim(dirname($_SERVER['SCRIPT_NAME']), '/.\\') . '/');
define('HTTPS_CATALOG', substr(HTTP_SERVER, 0, strlen(HTTP_SERVER)-6));
// DIR
define('DIR_OPENCART', str_replace('\'', '/', realpath(dirname(__FILE__) . '/../')) . '/');
define('DIR_APPLICATION', DIR_OPENCART.'admin/');
define('DIR_SYSTEM', DIR_OPENCART.'system/');
define('DIR_LANGUAGE', DIR_OPENCART.'admin/language/');
define('DIR_TEMPLATE', DIR_OPENCART.'admin/view/template/');
define('DIR_CONFIG', DIR_OPENCART.'system/config/');
define('DIR_IMAGE', DIR_OPENCART.'image/');
define('DIR_CACHE', DIR_OPENCART.'system/cache/');
define('DIR_DOWNLOAD', DIR_OPENCART.'system/download/');
define('DIR_UPLOAD', DIR_OPENCART.'system/upload/');
define('DIR_LOGS', DIR_OPENCART.'system/logs/');
define('DIR_MODIFICATION', DIR_OPENCART.'system/modification/');
define('DIR_CATALOG', DIR_OPENCART.'catalog/');

// DB
define('DB_DRIVER', 'mysqli');
define('DB_HOSTNAME', 'localhost');
define('DB_USERNAME', '3adb');
define('DB_PASSWORD', 'Feb232015');
define('DB_DATABASE', AAA_CATE . '_' . AAA_SITE);
define('DB_PREFIX', 'oc_');
