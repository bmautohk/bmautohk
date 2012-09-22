<?php
header('Access-Control-Allow-Origin: *');

$dir = $_GET['path'] . "/";

$dh = opendir($dir);
$files = array();
while (($file = readdir($dh)) !== false) {
    if ($file != '.' AND $file != '..' ) {
        if (filetype($dir . $file) == 'file') {
            $files[] = array(
                'name' => $file,
                'size' => filesize($dir . $file). ' bytes',
                'date' => date("F d Y H:i:s", filemtime($dir . $file)),
                'path' => $dir . $file,
		'description' => $file,
                'thumb' => $dir . 'thumbs/' . $file
            );
        }            
    }
}
closedir($dh);

echo(json_encode(array('files' => $files)));

?>
