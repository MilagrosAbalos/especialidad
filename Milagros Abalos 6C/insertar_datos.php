<?php
    include "academia_conexion.php";

    $Nombre=$_POST["Nombre"];
    $Apellido=$_POST["Apellido"];
    $Documento=$_POST["Documento"];
    $FecNat=$_POST["FecNat"];

    $Tutor=$_POST["Tutor"];

    $Calle=$_POST["Calle"];
    $Número=$_POST["Número"];

    $Telefono=$_POST["Telefono"];
    $Email=$_POST["Email"];

    $Disciplina=$_POST["Disciplina"];
    $Pago=$_POST["Pago"];

    $Query= INSERT INTO `alumnos`(`Id_alumnos`, `Nombre_alumnos`, `Apellido_alumnos`, `DNI_alumnos`, `FecNac_alumnos`, `Tutor_alumnos`, `Calle_alumnos`, `Numero_alumnos`, `Telefono_alumnos`, 
    `Email_alumnos`, `DISCIPLINA_ALUMNOS`, `PAGO_ALUMNOS`) 
    VALUES ('0','$Nombre','$Apellido','$Documento','$FecNat','$Tutor','$Calle','Número','$Telefono','$Email','$Disciplina','$Pago');

    echo $Query;

    $Resultado= mysqli_query($Conexion, $Query);

    if ($Resultado) {
        echo "Se guardo correctamente";
    }
    else {
        echo "Error, no se guardaron los datos";
    }

    mysqli_close($Conexion);

?>