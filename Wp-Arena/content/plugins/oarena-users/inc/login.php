<?php

class oArena_register
{
    public function __construct()
    {

        add_action('init', [$this, 'logUser']);
    }

    public function logUser()
    {
        //log
    }
}
