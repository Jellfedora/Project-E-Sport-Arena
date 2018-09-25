<?php

class Contact_cpt 
{
   public function __construct()
    {
        add_action ('init', [$this, 'create_contact_cpt']);
    }

    public function create_contact_cpt()
    {
        $labels = [
                    'name'                          => 'Messages',
                    'singular_name'                 => 'Message',
                    'menu_name'                     => 'Messages',
                    'name_admin_bar'                => 'Messages',
                    'archives'                      => 'Archives des messages',
                    'attributes'                    => 'Attributs des messages',
                    'parent_item_colon'             => 'Element parent',
                    'all_items'                     => 'Tous les messages',
                    'add_new_item'                  => false,
                    'add_new'                       => false,
                    'edit_item'                     => false,
                    'update_item'                   => false,
                    'view_item'                     => 'Voir la team',
                    'seach_items'                   => 'Rechercher les messages',
                    'not_found'                     => 'Aucun message trouvé',
                    'not_found_in_trash'            => 'Aucun message trouvé dans la corbeille',
                    'featured_image'                =>  false,
                    'remove_featured_image'         =>  false,
                    'set_featured_image'            =>  false,
                    'remove_featured_image'         =>  false,
                    'use_featured_image'            =>  false,
                    'intert_into_item'              =>  false,
                    'uploaded_to_this_item'         =>  false,
                    'items_list'                    => 'Liste des messages',
                    'items_list_navigation'         => 'Liste des messages',
                    'filter_items_list'             => 'Filtrer la liste des messages',
                ];

                $args = [
                    'label'                         => 'Message',
                    'description'                   => 'Vos messages reçus',
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
                    'menu_position'                => 1,
                    'menu_icon'                    => 'dashicons-admin-comments',
                    'has_archive'                  => true,
                    'rewrite'                      => [
                        'slug'                         => 'messages',
                        'with_front'                   => true
                    ],
                ];

     register_post_type('contact',  $args);

    }     
    public function activation()
    {
        $this->create_contact_cpt();
        
        flush_rewrite_rules();
    }
    
    public function deactivation()
    {
        flush_rewrite_rules();
    }
}
