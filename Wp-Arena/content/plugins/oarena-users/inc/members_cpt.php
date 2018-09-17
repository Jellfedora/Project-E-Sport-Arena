<?php

// Custom Post Type: Members

class oArena_members_cpt
{
    public function __construct()
    {
        add_action('init', [$this, 'create_cpt']);
    }

    public function create_cpt()
    {
        $labels = [
            'name' => 'Membres',
            'singular_name' => 'Membre',
            'menu_name' => 'Membres',
            'name_admin_bar' => 'Membres',
            'archives' => 'Archives des membres',
            'attributes' => 'Attributs des membres',
            'parent_item_colon' => 'Element parent',
            'all_items' => 'Tous les membres',
            'add_new_item' => 'Ajouter un nouveau membre',
            'add_new' => 'Ajouter un nouveau membre',
            'edit_item' => 'Editer le membre',
            'update_item' => 'Mettre à jour le membre',
            'view_item' => 'Voir le membre',
            'seach_items' => 'Rechercher les membres',
            'not_found' => 'Aucun membre trouvé',
            'not_found_in_trash' => 'Aucun membre trouvé dans la corbeille',
            'featured_image' => 'Image du membre',
            'remove_featured_image' => 'Supprimer l\'image du membre',
            'set_featured_image' => 'Ajouter une image au membre',
            'remove_featured_image' => 'Supprimer l\'image du membre',
            'use_featured_image' => 'Utiliser une image pour le membre',
            'intert_into_item' => 'Inserer dans le membre',
            'uploaded_to_this_item' => 'Televerser dans le membre',
            'items_list' => 'Liste des membres',
            'items_list_navigation' => 'Liste des membres',
            'filter_items_list' => 'Filtrer la liste des membres',
        ];

        $args = [
            'label' => 'membre',
            'description' => 'membres de l\'arena',
            'labels' => $labels,
            'supports' => [
                'title',
                'author',
                'editor',
                'thumbnail',
                'custom-fields',
                'revisions',
                'excerpt',
            ],
            'hierarchical' => false,
            'public' => true,
            'menu_position' => 20,
            'menu_icon' => 'dashicons-id',
            'has_archive' => true,
            'rewrite' => [
                'slug' => 'membres',
                'with_front' => true,
            ],
        ];

        register_post_type('members', $args);
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
