<?php

Class oArenaRole 
{
    public function __construct() {

        $this->addCap();
    }

    public function addRole()
    {
        // Création nouveau role pour l'admin team
        add_role('Team Admin', 'Administrateur de la team', [
            'read' => true,
            
        ]);
    }

    public function addCap()
    {
        $role = get_role('Team Admin');
        $role->add_cap('edit_published_posts');

        // $role = get_role('administrator');
        // $role->add_cap('oarena_show_secret');
    }

    public function removeRole()
    {
        remove_role('Team Admin');
    }

    public function activation()
    {
        $this->addRole();
        $this->addCap();
    }

    public function deactivation()
    {
        $this->removeRole();
    }
}

add_action('init', 'register_role_cap');