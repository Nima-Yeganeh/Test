<?php

$mp3_url = 'https://dl.next1.ir/files/2023/06/tak/MortezaPashaei-NazarBiHamsafarSham-128%28www.Next1.ir%29.mp3';

// Fetch the MP3 file contents
$mp3_data = file_get_contents($mp3_url);

// Check if the file data was retrieved successfully
if ($mp3_data === false) {
    echo "Failed to retrieve the MP3 file.";
    exit;
}

// Get the size of the MP3 file
$mp3_size = strlen($mp3_data);

// Set the appropriate content type and content length headers for playing audio
header('Content-type: audio/mpeg');
header("Content-length: $mp3_size");

// Output the MP3 file data
echo $mp3_data;
