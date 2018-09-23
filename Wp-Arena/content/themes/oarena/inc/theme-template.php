<?php function get_my_category_name($category_id)
{
    $category = get_category($category_id);

    return $category->name;
    var_dump($category);
    die();
}