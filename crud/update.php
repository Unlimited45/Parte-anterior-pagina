<?php
    include("conexion.php");
    $con=conectar();

    $ID_persona=$_POST['ID_persona'];
    $nombres=$_POST['nombres'];
    $apellidos=$_POST['apellidos'];
    $fecha_nacimiento=$_POST['fecha_nacimiento'];
    $direccion=$_POST['direccion'];
    $telefono=$_POST['telefono'];
    $correo=$_POST['correo'];
    $contraseña=$_POST['contraseña'];
    
    $Codigo_curso=$_POST['Codigo_curso'];
    $ID_rol=$_POST['ID_rol'];
    $ID_permisos=$_POST['ID_permisos'];
    


        $sql="UPDATE persona SET  nombres='$nombres',apellidos='$apellidos',fecha_nacimiento='$fecha_nacimiento',direccion='$direccion',telefono='$telefono',correo='$correo',contraseña='$contraseña',Codigo_curso='$Codigo_curso',ID_rol='$ID_rol',ID_permisos='$ID_permisos' WHERE ID_persona='$ID_persona'";
        $query=mysqli_query($con,$sql);

    if($query){
        Header("Location: crud.php");
    }
?>