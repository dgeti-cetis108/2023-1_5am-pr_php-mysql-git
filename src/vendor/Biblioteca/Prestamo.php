<?php

namespace vendor\Biblioteca;

class Prestamo
{
    public $Id;
    public $UsuarioId;
    public $ClienteId;
    public $FechaDeSalida;
    public $FechaDeRetorno;
    public $FechaLimite;
    public $Estatus;
    public $Tipo; // Interno, Externo
}