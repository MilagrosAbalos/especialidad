<?php

include "ipetym conexion.php";

$Apellido=$_POST["Apellido"];
$Nombre=$_POST["Nombre"];
$Documento= $_POST["Documento"];
$FNac= $_POST["FecNat"];
$Genero= $_POST["Genero"];
$Civil= $_POST["Civil"];

$Telefono= $_POST["Telefono"];
$Mail= $_POST["Mail"];

$Calle= $_POST["Calle"];
$Numero= $_POST["Numero"];
$Piso= $_POST["Piso"];
$Depto= $_POST["Depto"];
$Edificio= $_POST["Edificio"];
$Barrio= $_POST["Barrio"];

$Query = "INSERT INTO `alumnos`(`Id_Alumnos`, `Apellido_Alumnos`, `Nombre_Alumnos`, `Documento_Alumnos`, `FecNac_Alumnos`,
 `GENERO_ALUMNOS`, `Telefono_Alumnos`, `Mail_Alumnos`, `Calle_Alumnos`, `Numero_Alumnos`, `Piso_Alumnos`, `Depto_Alumnos`,
  `Edificio_Alumnos`, `BARRIO_ALUMNOS`, `CIVIL_ALUMNOS`) 
  VALUES ('0','$Apellido','$Nombre','$Documento','$FNac','$Genero','$Telefono','$Mail','$Calle','$Numero',
  '$Piso','$Depto','$Edificio','$Barrio','$Civil')";

echo $Query;

$Resultado= mysqli_query($Conexion, $Query);

if ($Resultado) {
  echo "Se guado correctamente";
}
else {
  echo "Error no se pudo guardar los datos";
}
mysqli_close($Conexion);
?>