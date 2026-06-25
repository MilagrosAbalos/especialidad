<?php
    include "conexion.php";
    $QueryGenero="Select * from generos order by 2";
    $ResultadoGenero= mysqli_query($Conexion,$QueryGenero);

    $QueryBarrio="Select * from barrios order by 2";
    $ResultadoBarrio= mysqli_query($Conexion,$QueryBarrio);

    include "conexion.php";
    $QueryEstado="Select * from estados order by 2";
    $ResultadoEstado= mysqli_query($Conexion,$QueryEstado);

 
    $QueryCurso="Select * from cursos order by 2";
    $ResultadoCurso= mysqli_query($Conexion,$QueryCurso);


?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>carga Formulario Alumnos</title>
</head>
<body>
    <form method="post" action="guardar.php">
        <fieldset>
            <legend>Datos Personales</legend>

            <label>Apellido</label>
            <input type="text" name="Apellido" maxlenght="30">

            <label>Nombre</label>
            <input type="text" name="Nombre" maxlenght="30">
            <br>
            <br>

            <label>Documento</label>
            <input type="text" name="Documento" maxlenght="8">

            <label>Fecha de nacimiento</label>
            <input type="date" name="FecNat">
            <br>
            <br>

            <label>Género</label>
            <select name="Genero">
                <!--Abro php para cargar -->
                <?php
                # En la variable fila guardo la cantidad de filas que tiene el array
                    $filas = mysqli_num_rows($ResultadoGenero);
                #Pregunto si la cantidad de filas del array es mayor a 0
                    if ($filas > 0) {

                    # Recorre el array hasta que el valor de la fila se nulo
                        while ($RegistroGenero = mysqli_fetch_array($ResultadoGenero)){
                            echo'<option value="'.$RegistroGenero[0].'">'.$RegistroGenero[1].'</option>';
                        }
                    }

                    else {
                        echo'<option>sin datos</option>';
                    }


                ?>
            
            </select>

            <label>Estado Civil</label>
            <select name="Civil">
                <!--Abro php para cargar -->
                <?php
                # En la variable fila guardo la cantidad de filas que tiene el array
                    $filas = mysqli_num_rows($ResultadoEstado);
                #Pregunto si la cantidad de filas del array es mayor a 0
                    if ($filas > 0) {

                    # Recorre el array hasta que el valor de la fila se nulo
                        while ($RegistroEstado = mysqli_fetch_array($ResultadoEstado)){
                            echo'<option value="'.$RegistroEstado[0].'">'.$RegistroEstado[1].'</option>';
                        }
                    }

                    else {
                        echo'<option>sin datos</option>';
                    }


                ?>
            
            </select>

        </fieldset>
        <br>
        <fieldset>
            <legend>Contactos</legend>
            <label>Telefono</label>
            <input type="text" name="Telefono" maxlenght="20">

            <label>Mail</label>
            <input type="text" name="Mail" maxlenght="30">

        </fieldset>
        <br>
        <fieldset>
            <legend>Domicilio</legend>
            <label>Calle</label>
            <input type="text" name="Calle" maxlenght="30">

            <label>Número</label>
            <input type="text" name="Numero" maxlenght="4">
            <br>
            <br>

            <label>Piso</label>
            <input type="text" name="Piso" maxlenght="2">

            <label>Departamento</label>
            <input type="text" name="Depto" maxlenght="3">
            <br>
            <br>
            
            <label>Edifcio</label>
            <input type="text" name="Edificio" maxlenght="30">

            <label>Barrio</label>
            <select name= "Barrio">
                <?php
                    $filas = mysqli_num_rows($ResultadoBarrio);
                    if ($filas > 0) {
                        while ($RegistroBarrio = mysqli_fetch_array($ResultadoBarrio)) {
                            echo'<option value="'.$RegistroBarrio[0].'">'.$RegistroBarrio[1].'</option>';
                        }
                    }
                    else {
                        echo '<option>sin datos</option>';
                    }    

                ?>

            </select>
            <br>
        </fieldset>
        <br>
        <fieldset>
            <legend>Datos del colegio</legend>
            <label>Curso</label>
            <select name= "Curso">
                <?php
                    $filas = mysqli_num_rows($ResultadoCurso);
                    if ($filas > 0) {
                        while ($RegistroCurso = mysqli_fetch_array($ResultadoCurso)) {
                             echo'<option value="'.$RegistroCurso[0].'">'.$RegistroCurso[1].'</option>';
                        }
                    }
                    else {
                        echo '<option>sin datos</option>';
                    }  
                
                ?>
            </select>

        </fieldset>
        
        <input type="submit" value="enviar">
        <input type="reset" value="cancelar">

    </form>

<?php
    mysqli_close($Conexion);

?>
    
</body>
</html>
