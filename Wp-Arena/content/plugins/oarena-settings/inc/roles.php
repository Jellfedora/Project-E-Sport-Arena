<?php

class oArenaRole
{
    public function __construct()
    {

        $this->addCap();
    }

    public function addRole()
    {
        // Création nouveau role pour l'admin team
        add_role('TeamAdmin', 'Administrateur de la team', [
            'read' => true,
            'edit_posts' => true,
            'edit_published_posts' => true,
        ]);

        add_role('Membre', 'Membre du site', [
            // A MODIFIER EN FALSE POUR CACHER LA BARRE D ADMIN
            'read' => true,
        ]);
    }

    public function addCap()
    {
        $role = get_role('Team Admin');
        $role = get_role('Membre');

    }

    public function removeRole()
    {
        remove_role('TeamAdmin');
        remove_role('Membre');
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
