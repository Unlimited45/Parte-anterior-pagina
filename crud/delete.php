<?php

include("conexion.php");
$con=conectar();

$ID_persona=$_GET['id'];

$sql="DELETE FROM persona WHERE ID_persona='$ID_persona'";
$query=mysqli_query($con,$sql);

    if($query){
        Header("Location: crud.php");
    }
?>