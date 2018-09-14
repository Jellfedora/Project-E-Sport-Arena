<?php

class Team_cpt 
{
   public function __construct()
    {
        add_action ('init', [$this, 'create_team_cpt']);
    }

    public function create_team_cpt()
    {
        $labels = [
                    'name'                          => 'Teams',
                    'singular_name'                 => 'Team',
                    'menu_name'                     => 'Teams',
                    'name_admin_bar'                => 'Teams',
                    'archives'                      => 'Archives des teams',
                    'attributes'                    => 'Attributs des teams',
                    'parent_item_colon'             => 'Element parent',
                    'all_items'                     => 'Toutes les teams',
                    'add_new_item'                  => 'Ajouter une nouvelle team',
                    'add_new'                       => 'Ajouter une nouvelle team',
                    'edit_item'                     => 'Editer la team',
                    'update_item'                   => 'Mettre à jour la team',
                    'view_item'                     => 'Voir la team',
                    'seach_items'                   => 'Rechercher les teams',
                    'not_found'                     => 'Aucun team trouvée',
                    'not_found_in_trash'            => 'Aucun team trouvée dans la corbeille',
                    'featured_image'                => 'Image de la team',
                    'remove_featured_image'         => 'Supprimer l\'image de la team',
                    'set_featured_image'            => 'Ajouter une image à la team',
                    'remove_featured_image'         => 'Supprimer l\'image de la team',
                    'use_featured_image'            => 'Utiliser une image pour la team',
                    'intert_into_item'              => 'Inserer dans la team',
                    'uploaded_to_this_item'         => 'Televerser dans la team',
                    'items_list'                    => 'Liste des teams',
                    'items_list_navigation'         => 'Liste des teams',
                    'filter_items_list'             => 'Filtrer la liste des teams',
                ];

                $args = [
                    'label'                         => 'Team',
                    'description'                   => 'Teams de l\'arena',
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
                    'menu_icon'                    => 'dashicons-groups',
                    'has_archive'                  => true,
                    'rewrite'                      => [
                        'slug'                         => 'team',
                        'with_front'                   => true
                    ],
                ];

     register_post_type('team',  $args);

    }     
    public function activation()
    {
        $this->create_team_cpt();
        
        flush_rewrite_rules();
    }
    
    public function deactivation()
    {
        flush_rewrite_rules();
    }
}
