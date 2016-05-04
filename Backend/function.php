<?php

/**
 * Распечатка массива
 **/
function print_arr($array){
    echo "<pre>" . print_r($array, true) . "</pre>";
}

/**
 * Получение массива категорий
 **/
function get_cat(){
    global $Connect;
    $query = "SELECT * FROM `category` ";
    $res = mysqli_query($Connect, $query);

    $arr_cat = array();
    while($row = mysqli_fetch_assoc($res)){
        $arr_cat[$row['id']] = $row;
    }
    return $arr_cat;
}

/**
 * Построение дерева
 **/
function map_tree($dataset) {
    $tree = array();

    foreach ($dataset as $id=>&$node) {
        if (!$node['parent']){
            $tree[$id] = &$node;
        }else{
            $dataset[$node['parent']]['childs'][$id] = &$node;
        }
    }

    return $tree;
}

/**
 * Дерево в строку HTML
 **/
function categories_to_string($data){
    foreach($data as $item){
        $string .= categories_to_template($item);
    }
    return $string;
}

/**
 * Шаблон вывода категорий
 **/
function categories_to_template($category){
    ob_start();
    include 'list_category.php';
    return ob_get_clean();
}

/**
 * Получение ID дочерних категорий
 **/
function cats_id($array, $id){
    if(!$id) return false;

    foreach($array as $item){
        if($item['category_id'] == $id){
            $data .= $item['id'] . ",";
            $data .= cats_id($array, $item['id']);
        }
    }
    return $data;
}

/**
 * Получение товаров
 **/
function get_products($ids = false){

    global $Connect;
    if($ids){
        $query = "SELECT * FROM tovars WHERE category_id IN($ids) ORDER BY id";
    }else{
        $query = "SELECT * FROM tovars ORDER BY id";
    }

    $res = mysqli_query($Connect, $query);
    $tovars = array();
    while($row = mysqli_fetch_assoc($res)){
        $tovars[] = $row;
    }
    return $tovars;


}
