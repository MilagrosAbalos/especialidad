<?php

    #Declaro las variables para poder conectarme a mysql(maria DB)
        $Server="127.0.0.1";
        $User="root";
        $Pass="";
        $Base="ipetym";
        
    #Creamos la conexion  de la base de datos
    $Conexion=mysqli_connect($Server, $User, $Pass, $Base);



?>