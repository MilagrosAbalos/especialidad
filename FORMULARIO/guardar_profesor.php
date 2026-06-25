<?php

include "conexion.php";

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
$Curso=$_POST["Curso"];

$Query = INSERT INTO `profesores`(`Id_profesores`, `Apellido_profesores`, `Nombre_profesores`, `Documento_profesores`, `FecNac_profesores`, `GENERO_PROFESORES`, `Telefono_profesores`, 
`Email_profesores`, `Calle_profesores`, `Numero_profesores`, `Piso_profesores`, `Depto_profesores`, `Edificio_profesores`, `BARRIO_PROFESORES`, `CIVIL_PROFESORES`, `CURSO_PROFESORES`) 
VALUES ('0','$Apellido','$Nombre','$Documento','$FNac','$Genero','$Telefono','$Mail','$Calle','$Numero','$Piso','$Depto','$Edificio','$Barrio','$Civil','$Curso')
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