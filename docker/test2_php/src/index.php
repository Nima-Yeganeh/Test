<?php
  // echo "Hello, world!";
  $url = 'https://raw.githubusercontent.com/Nima-Yeganeh/Test/main/index.html';
  $html = file_get_contents($url);
  echo $html;
  $url = 'https://raw.githubusercontent.com/Nima-Yeganeh/Test/main/index.MD';
  $html = file_get_contents($url);
  echo $html;
?>

