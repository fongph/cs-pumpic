<?php

// read the webhook sent by LiveChat
$inputData = file_get_contents('php://input');
$data = json_decode($inputData, true);

if ($data['event_type'] === 'chat_started')
{
    file_put_contents('chatdata', $inputData . PHP_EOL, FILE_APPEND);
}