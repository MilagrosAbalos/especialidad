<?php
    #El post hace que recibala info del formulario al servidor
    $barrios=$_POST("barrios");
    $zonas=$_POST("zonas");

    #Muestra los datos
    echo "Barrio: ".$barrios."<br>";
    echo "Zona:".$barrios."<br>";

    #Declaro las variable de la base de datos
    $SERVER="127.0.0.1";
    $Usuario="root";
    $Pass="";
    $Base="ipetym";

    #Me conecto a la base de batos
    $conexion=mysqli_query($SERVER, $Usuario, $Pass, $Base);

    #Creo la Query al enviar el motor de la base de datos
    $SqueryZona= "SELECT * FROM `barrios` order by 2";

    #Relación zonas
    $ResultadoZona=mysqli_query($conexion, $SqueryZona);

    if ($Resultado) {
        echo "Los datos se guardaron";

    }

    else {
        echo "Error la carga";
        
    }

    mysqli_close($conexion);

?>

<!DOCTYPE html>
<select name="Zona">
    <?php
        $filas = mysqli_num_rows

</html>
