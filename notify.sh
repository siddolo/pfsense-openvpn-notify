#!/usr/local/bin/php -q
<?php
    require_once('/etc/inc/notices.inc');
    $time_ascii = getenv('time_ascii');
    $common_name = getenv('common_name');
    $untrusted_ip = getenv('untrusted_ip');
 
    $msg = "VPN Connection Event\n\n";
    $msg .= $time_ascii . ' - ' . $common_name . ' connected from ' . $untrusted_ip . "\n";
 
    notify_all_remote($msg);
?>
