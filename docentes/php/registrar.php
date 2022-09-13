<?php
include("con_db.php");
if(isset($_POST['registrar'])){
    if(strlen($_POST['ID_persona'])>=1 &&
    strlen($_POST['nombres'])>=1 &&
    strlen($_POST['apellidos'])>=1 &&
    strlen($_POST['fecha_nacimiento'])>=1 &&
    strlen($_POST['direccion'])>=1 &&
    strlen($_POST['telefono'])>=1 &&
    strlen($_POST['correo'])>=1 &&
    strlen($_POST['contraseña'])>=1){
        $ID_persona=$_POST['ID_persona'];
        $nombres=trim($_POST['nombres']);
        $apellidos=trim($_POST['apellidos']);
        $direccion=trim($_POST['direccion']);
        $fecha_nacimiento=trim($_POST['fecha_nacimiento']);
        $telefono=trim($_POST['telefono']);
        $correo=trim($_POST['correo']);
        $contraseña=trim($_POST['contraseña']);
        $consulta= "INSERT INTO persona(ID_persona, nombres, apellidos, fecha_nacimiento, direccion, telefono, correo, contraseña) VALUES ('$ID_persona','$nombres','$apellidos','$fecha_nacimiento','$direccion','$telefono','$correo','$contraseña')";
        $resultado= mysqli_query($conex, $consulta);
        if($resultado){
            ?>
            <h3 class="ok">¡Te has registrado correctamente!</h3>
            <?php 
        } else{
            ?>
            <h3 class="bad">Ups ha ocurrido un error!</h3>
            <?php
        }
    } 
}
?>