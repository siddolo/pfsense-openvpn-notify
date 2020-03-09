#!/usr/local/bin/php -q
<?php
    require_once('/etc/inc/notices.inc');
    $time_ascii = getenv('time_ascii');
    $common_name = getenv('common_name');
    $untrusted_ip = getenv('untrusted_ip');
    $script_type = getenv('script_type');
    $forceSMTP = TRUE;
    
    $msg = "VPN Connection Event\n\n";
    
    if ($script_type === 'client-connect') {
        $subject = "{$config['system']['hostname']}.{$config['system']['domain']} - VPN - $common_name ON";
        $msg .= $time_ascii . ' - ' . $common_name . ' CONNECTED from ' . $untrusted_ip . "\n";
    } else if ($script_type === 'client-disconnect') {
        $subject = "{$config['system']['hostname']}.{$config['system']['domain']} - VPN - $common_name OFF";
        $msg .= $time_ascii . ' - ' . $common_name . ' DISCONNECTED from ' . $untrusted_ip . "\n";
    }

    if ($forceSMTP === TRUE) {
        send_smtp_message($msg, $subject);
    } else {
        //subject not supported here
        notify_all_remote($msg);
    }
?>
