<?php
    include "academia_conexion.php";
    $QueryDisciplina= "SELECT * FROM `disciplinas` order by 2";
    $ResultadoDisciplina= mysqli_query($Conexion, $QueryDisciplina);

    include "academia_conexion.php";
    $QueryPago= "SELECT * FROM `pagos` order by 2";
    $ResultadoPago= mysqli_query($Conexion, $QueryPago);

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inscripción Academia</title>
    <style>
        body{
            font-family: 'Poppins', sans-serif;
        }
    </style>
</head>

<body>
    <form method="post" action="insertar_datos.php">
        <h1> Inscripción para la Academia de Baile</h1>

        <fieldset>
            <legend>Datos del Alumno/a </legend>

            <label>Nombre</label>
            <input type="text" name="Nombre" maxlength="30">

            <label>Apellido</label>
            <input type="text" name="Apellido" maxlength="30">
            <br>
            <br>

            <label>Documento</label>
            <input type="text" name="Documento" maxlength="8">

            <label>Fecha de nacimiento</label>
            <input type="date" name="FecNat">
            <br>
        
        </fieldset>
        <br>
        <fieldset>
            <legend>Datos del Tutor/a </legend>
            <label>Nombre y apellido</label>
            <input type="text" name="Tutor" maxlength="30">
            <br>
        
        </fieldset>
        <br>
        <fieldset>
            <legend>Domicilio</legend>
            <label>Calle</label>
            <input type="text" name="Calle" maxlength="30">

            <label>Número</label>
            <input type="text" name="Numero" maxlength="4">
        </fieldset>
        <br>
        <fieldset>
            <legend>Contactos</legend>
            <label>Telefono</label>
            <input type="text" name="Telefono" maxlength="10">

            <label>Email</label>
            <input type="text" name="Email" maxlength="30">

        </fieldset>
        <br>
        <fieldset>
            <legend>Inscripción</legend>
            <label>Disciplina</label>
            <select name= "Disciplina">
                    <?php
                        $filas = mysqli_num_rows($ResultadoDisciplina);

                        if ($filas > 0) {
                            while ($RegistroDisciplina = mysqli_fetch_array($ResultadoDisciplina)) {
                                echo '<option value="'.$RegistroDisciplina[0].'">'. $RegistroDisciplina[1].'</option>';       
                            }
                        }
                        else {
                            echo '<option>sin datos</option>';
                        }


                    ?>
            </select>

            <label>Pago</label>
            <select name= "Pago">
                    <?php
                        $filas = mysqli_num_rows($ResultadoPago);

                        if ($filas > 0) {
                            while ($RegistroPago = mysqli_fetch_array($ResultadoPago)) {
                                echo '<option value="'.$RegistroPago[0].'">'. $RegistroPago[1].'</option>';       
                            }
                        }
                        else {
                            echo '<option>sin datos</option>';
                        }


                    ?>
            </select>
        </fieldset>
        <br>
        <input type="submit" value="enviar">
        <input type="reset" value="cancelar">

    </form>

<?php
    mysqli_close($Conexion);
?>

</body>
</html>