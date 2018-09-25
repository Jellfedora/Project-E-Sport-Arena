<?php

// Custom Post Type: Members

class oArenaShopCpt
{
    public function __construct()
    {
        add_action('init', [$this, 'create_cpt']);
    }

    public function create_cpt()
    {
        $labels = [
            'name' => 'Boutique',
            'singular_name' => 'Membre',
            'menu_name' => 'Boutique',
            'name_admin_bar' => 'Boutique',
            'archives' => 'Archives de la boutique',
            'attributes' => 'Attributs de la boutique',
            'parent_item_colon' => 'Element parent',
            'all_items' => 'Toutes les boutiques',
            'add_new_item' => 'Ajouter un nouvel article',
            'add_new' => 'Ajouter un nouvel article',
            'edit_item' => 'Editer le membre',
            'update_item' => 'Mettre à jour l\'article',
            'view_item' => 'Voir l\'article',
            'seach_items' => 'Rechercher dans la boutique',
            'not_found' => 'Aucun article trouvé',
            'not_found_in_trash' => 'Aucun article trouvé dans la corbeille',
            'featured_image' => 'Image de l\'article',
            'remove_featured_image' => 'Supprimer l\'image de l\'article',
            'set_featured_image' => 'Ajouter une image a l\'article',
            'remove_featured_image' => 'Supprimer l\'image de l\'article',
            'use_featured_image' => 'Utiliser une image pour l\'article',
            'intert_into_item' => 'Inserer dans l\'article',
            'uploaded_to_this_item' => 'Televerser dans l\'article',
            'items_list' => 'Liste des articles',
            'items_list_navigation' => 'Liste des articles',
            'filter_items_list' => 'Filtrer la liste des articles',
        ];

        $args = [
            'label' => 'Articles',
            'description' => 'article de la boutique de l\'arena',
            'labels' => $labels,
            'supports' => [
                'title',
                //'editor',
                //'thumbnail',
                //'custom-fields',
                'revisions',
            ],
            'hierarchical' => false,
            'public' => true,
            'menu_position' => 6,
            'menu_icon' => 'dashicons-cart',
            'has_archive' => true,
            'rewrite' => [
                'slug' => 'shop',
                'with_front' => true,
            ],
        ];

        register_post_type('article', $args);
    }

    // As we are going to manipulate new types of content, therefore new roads
    // => when the plugin will be activated we will execute create cpt. => flush to reload the roads

    public function activation()
    {
        $this->create_cpt();

        flush_rewrite_rules();
    }

    public function deactivation()
    {
        flush_rewrite_rules();
    }
}