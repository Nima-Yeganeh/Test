<?php
// Get the filename from the URL query parameter
$filename = $_GET['filename'];

// Define the path to the directory where the video files are stored
$videoDir = '/root/';

// Specify the full path of the video file
$videoPath = $videoDir . $filename;

// Check if the file exists
if (file_exists($videoPath)) {
    // Set the appropriate headers for video streaming
    header('Content-Type: video/mp4');
    header('Content-Length: ' . filesize($videoPath));

    // Open the video file for reading
    $file = fopen($videoPath, 'rb');

    // Stream the video file content to the output buffer
    fpassthru($file);

    // Close the file
    fclose($file);
} else {
    // File not found, handle the error accordingly
    echo 'Video file not found.';
}
?>
