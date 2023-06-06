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
		        $mp3_url = str_replace(' ', '', $mp3_url);
		        $mp3_url = trim($mp3_url);
                // Set appropriate headers for streaming
                header('Content-Type: audio/mpeg');
                header('Content-Length: ' . filesize($mp3_url));
                header('Content-Disposition: inline; filename="file.mp3"');
                // Stream the file
                readfile($mp3_url);
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
