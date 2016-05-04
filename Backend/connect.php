<?php
/** @var  $mysqli
 * Подключаем базу данных;
 *
 *
 *
 */
define('HOST', 'localhost');
define('USER', 'root');
define('PASS', '');
define('DB', 'testIDLTD');

$Connect = @mysqli_connect(HOST, USER, PASS, DB) or die("Ошибка подключения к БД");
mysqli_set_charset($Connect, "utf8") or die ("Ошибка подключения кодировки");

?>