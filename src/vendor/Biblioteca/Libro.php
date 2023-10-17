<?php

namespace vendor\Biblioteca;

class Libro
{
    public $Id;
    public $Titulo;
    public $Edicion;
    public $Isbn;
    public $Genero;
    public $NumeroDePaginas;
    public $Idioma;
    public $EditorialId; // FK
}