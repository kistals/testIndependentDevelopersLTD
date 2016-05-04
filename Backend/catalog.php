<?php
include 'connect.php';
include 'function.php';

$categories = get_cat();
$categories_tree = map_tree($categories);
$categories_menu = categories_to_string($categories_tree);

if(isset($_GET['category']))
{
    $id = (int)$_GET['category'];

    // ID дочерних категорий
    $ids = !$ids ? $id : rtrim($ids);

    if($ids) $tovars = get_products($ids);
    else $tovars = null;

}else{

        $tovars = get_products();
     }