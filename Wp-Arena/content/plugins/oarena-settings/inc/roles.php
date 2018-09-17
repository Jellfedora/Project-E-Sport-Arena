<?php

Class oArenaRole 
{
    public function __construct() {

        $this->addCap();
    }

    public function addRole()
    {
        // Création nouveau role pour l'admin team
        add_role('TeamAdmin', 'Administrateur de la team', [
            'read' => true,
            'edit_published_posts' => true,            
        ]);
    }

    public function addCap()
    {
        $role = get_role('Team Admin');
    

    }

    public function removeRole()
    {
        remove_role('TeamAdmin');
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

