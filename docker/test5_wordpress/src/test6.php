<?php

// Get the URL entered by the user (assuming it's passed as a query parameter named "url")
# $url = isset($_GET['url']) ? $_GET['url'] : '';

// Extract the filename from the URL
# $filename = basename($url);
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

// Echo the line number or an error message if the file or search term was not found
if ($lineNumber !== false) {
    echo "The filename '$filename' was found on line $lineNumber in $file.";
} else {
    echo "The filename '$filename' was not found in $file.";
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
                echo "The line number $lineNumber in $file2 contains: $line";
                break;
            }
        }
        fclose($file2Handle);
    } else {
        echo "Failed to open $file2.";
    }
} else {
    echo "The filename '$filename' was not found in $file1.";
}
