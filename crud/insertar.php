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




$sql="INSERT INTO persona VALUES('$ID_persona','$nombres','$apellidos','$fecha_nacimiento','$direccion','$telefono','$correo','$contraseña','$Codigo_curso','$ID_rol','$ID_permisos')";
$query= mysqli_query($con,$sql);

if($query){
    Header("Location: crud.php");
    
}else {
}
?>