<?php

$filename = $_GET['filename'];

// Search for the filename in file1.txt and retrieve the line number
$file = 'file1.txt';
$searchTerm = $filename;
$lineNumber = false;

$fileHandle = fopen($file, 'r');
if ($fileHandle) {
    $currentLine = 0;
    while (($line = fgets($fileHandle)) !== false) {
        $currentLine++;
        if (strpos($line, $searchTerm) !== false) {
            $lineNumber = $currentLine;
            break;
        }
    }
    fclose($fileHandle);
}

// If a line number was found in file1.txt, search for another string in file2.txt based on the line number
if ($lineNumber !== false) {
    $file2 = 'file2.txt';
    $file2Handle = fopen($file2, 'r');
    if ($file2Handle) {
        $currentLine = 0;
        while (($line = fgets($file2Handle)) !== false) {
            $currentLine++;
            if ($currentLine === $lineNumber) {
                // echo "The line number $lineNumber in $file2 contains: $line";
                $mp3_url = $line;
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
                break;
            }
        }
        fclose($file2Handle);
    } else {
        echo "Failed to open $file2.";
    }
} else {
    echo "The filename '$filename' was not found!";
}
