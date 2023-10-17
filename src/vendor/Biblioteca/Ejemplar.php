<?php

namespace vendor\Biblioteca;

class Ejemplar
{
    public $Id;
    public $LibroId; // FK
    public $FechaDeIngreso;
    public $Costo;
    public $Condiciones;
}