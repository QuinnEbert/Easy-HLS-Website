<?php
$s = $_REQUEST['name'];
$code = 400;
if (count(explode('_',$s))===2) {
  $p = explode('_',$s);
  $a = $p[0]; $b = $p[1];
  if (strlen($a)&&strlen($b)) {
    if ($a=='quinn'&$b=='foobar') {
      $code=200;
    }
  }
}
http_response_code($code);
