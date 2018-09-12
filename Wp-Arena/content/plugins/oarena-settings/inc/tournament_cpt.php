<?php 

// I create my class Tournament cpt 

class Tournament_cpt 
{
    public function __construct()
    {
        add_action ('init', [$this, 'create_cpt']);
        add_action ('init', [$this, 'create_taxonomies']);
    }

    public function create_cpt()
    {
        $labels = [
            'name'                          => 'Tournois',
            'singular_name'                 => 'Tournoi',
            'menu_name'                     => 'Tournois',
            'name_admin_bar'                => 'Tournois',
            'archives'                      => 'Archives des tournois',
            'attributes'                    => 'Attributs des tournois',
            'parent_item_colon'             => 'Element parent',
            'all_items'                     => 'Tous les tournois',
            'add_new_item'                  => 'Ajouter un nouveau tournoi',
            'add_new'                       => 'Ajouter un nouveau tournoi',
            'edit_item'                     => 'Editer le tournoi',
            'update_item'                   => 'Mettre à jour le tournoi',
            'view_item'                     => 'Voir le tournoi',
            'seach_items'                   => 'Rechercher les tournois',
            'not_found'                     => 'Aucun tournoi trouvé',
            'not_found_in_trash'            => 'Aucun tournoi trouvé dans la corbeille',
            'featured_image'                => 'Image du tournoi',
            'remove_featured_image'         => 'Supprimer l\'image du tournoi',
            'set_featured_image'            => 'Ajouter une image au tournoi',
            'remove_featured_image'         => 'Supprimer l\'image du tournoi',
            'use_featured_image'            => 'Utiliser une image pour le tournoi',
            'intert_into_item'              => 'Inserer dans le tournoi',
            'uploaded_to_this_item'         => 'Televerser dans le tournoi',
            'items_list'                    => 'Liste des tournois',
            'items_list_navigation'         => 'Liste des tournois',
            'filter_items_list'             => 'Filtrer la liste des tournois',
        ];

        $args = [
            'label'                         => 'Tournoi',
            'description'                   => 'tournoi de l\'arena',
            'labels'                        => $labels,
            'supports'                      => [
                'title',
                'author',
                'editor',
                'thumbnail',
                'custom-fields',
                'revisions',
                'excerpt'
            ],
            'hierarchical'                 => false,
            'public'                       => true,
            'menu_position'                => 5,
            'menu_icon'                    => 'dashicons-networking',
            'has_archive'                  => true,
            'rewrite'                      => [
                'slug'                         => 'tournoi',
                'with_front'                   => true
            ],
        ];

        register_post_type('tournament',  $args);
    }

    // I create my taxonomy games

    public function create_taxonomies()
    {
        $labels = [
            'name'                          => 'Jeux',
            'singular_name'                 => 'Jeu',
            'menu_name'                     => 'Jeu',
            'name_admin_bar'                => 'Jeu',
            'archives'                      => 'Archives des jeux',
            'attributes'                    => 'Attributs des jeux',
            'parent_item_colon'             => 'Element parent',
            'all_items'                     => 'Tous les jeux',
            'add_new_item'                  => 'Ajouter un nouveau jeu',
            'add_new'                       => 'Ajouter un nouveau jeu',
            'edit_item'                     => 'Editer le jeu',
            'update_item'                   => 'Mettre à jour le jeu',
            'view_item'                     => 'Voir le jeu',
            'seach_items'                   => 'Rechercher les jeux',
            'not_found'                     => 'Aucun jeu trouvé',
            'not_found_in_trash'            => 'Aucun jeu trouvé dans la corbeille',
            'featured_image'                => 'Image du jeu',
            'remove_featured_image'         => 'Supprimer l\'image du jeu',
            'set_featured_image'            => 'Ajouter une image au jeu',
            'remove_featured_image'         => 'Supprimer l\'image du jeu',
            'use_featured_image'            => 'Utiliser une image pour le jeu',
            'intert_into_item'              => 'Inserer dans le jeu',
            'uploaded_to_this_item'         => 'Televerser dans le jeu',
            'items_list'                    => 'Liste des jeux',
            'items_list_navigation'         => 'Liste des jeux',
            'filter_items_list'             => 'Filtrer la liste des jeux',
        ];

        $args = [
            'labels'                        => $labels,
            'hierarchical'                  => false,
            'public'                        => true
        ];

        register_taxonomy('jeu', 'tournament',  $args);

    // I create my taxonomy games

        $labels = [
            'name'                       => 'Teams',
            'singular_name'              => 'Team',
            'menu_name'                  => 'Teams',
            'all_items'                  => 'Toutes les teams',
            'new_item_name'              => 'Nouvelle team',
            'add_new_item'               => 'Ajouter une team',
            'update_item'                => 'Mettre à jour une team',
            'edit_item'                  => 'Editer une team',
            'view_item'                  => 'Voir toutes les teams',
            'separate_items_with_commas' => 'Séparer les teams avec une virgule',
            'add_or_remove_items'        => 'Ajouter ou supprimer une team',
            'choose_from_most_used'      => 'Choisir parmis les teams les plus utilisés',
            'popular_items'              => 'Teams populaires',
            'search_items'               => 'Rechercher une team',
            'not_found'                  => 'Aucune team trouvé',
            'items_list'                 => 'Lister les teams',
            'items_list_navigation'      => 'Lister les teams',
        ];

        $args = [
            'labels'                    => $labels,
            'hierarchical'              => true,
            'show_in_rest'              => true,
            'public'                    => true
        ];

        register_taxonomy('team', 'tournament', $args);

    }

  
    // As we are going to manipulate new types of content, therefore new roads
    // => when the plugin will be activated we will execute create cpt and taxonomies. => flush to reload the roads

    public function activation()
    {
        $this->create_cpt();
        $this->create_taxonomies();

        flush_rewrite_rules();
    }

    public function deactivation()
    {
        flush_rewrite_rules();
    }
}