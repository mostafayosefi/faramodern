<?php 



$post = [
    'uid' => '60da4295-60d2-4200-b318-89846c7ce8ba', 
];

$token='Bearer 9nM0oXheGBgxFyl-EofzdjiAznE4goeYlJl0CcGJZlt3lKeE-VyNqyIDtyO_fGiYyWsYgYYb17kcRH6_A-jvAMRz6fm_Ark9iEY3OB1mTOAhrkhfFIxBm3_cRM5q7knCuX6_G65zlyciNy1gsni1U9_JscysXrZb9hfyyygTkHdt7yYOW3fxd52mZDnjF0C0qoBftXvNGl8KBa2kHGUx_SB7lSIbJJG42efZZGkaZ-QU63nq8-61GKUxQv1RyRudkfDu5rqvrvAQ9wvZPywWDMGBym1yS0KUUungsDSWLYE';

$ch = curl_init();
curl_setopt($ch, CURLOPT_URL, "https://api.moneyar.com/payment/merchant/balance");
curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
curl_setopt($ch, CURLOPT_HEADER, 1);
curl_setopt($ch, CURLOPT_POSTFIELDS, $post);
curl_setopt($ch, CURLOPT_HTTPHEADER, array(
    'Content-Type: application/json',
    'Content-Length: '.strlen($body),
    'Authorization: '.$token
));
$output = curl_exec($ch);
curl_close($ch);
echo ($output);
?>