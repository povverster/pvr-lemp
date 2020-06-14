<?php

declare(strict_types=1);

$link = mysqli_connect('mysql', 'root', 'root');
if (!$link) {
  die('Connection error: ' . mysqli_error($link));
}

echo 'Successfully connected.';

mysqli_close($link);
