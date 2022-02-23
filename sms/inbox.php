<?php
$soap = new SoapClient('http://www.2972.ir/wsdl?XML');
if ($soap->Authentication('zaban724', 'zaban724'))
{
    $proceed = 0;
    if (($new = $soap->HasUnread()) > 0)
    {
        while ($soap->HasUnread() > 0 AND $proceed < 20)
        {
            $message = $soap->RetrieveMessage();
            echo "From:$message->From"."**";
            echo "To:$message->To<br />";
            echo "Message:$message->Message"."##";
            echo "Date: " . date('Y/m/d H:i:s', $message->Dateline) . "<br />";            
            $proceed++;
        }
        
    }
    else
    {
        echo 'No';
    }
}
else
{
    echo 'Authentication failed!';
}
?> 