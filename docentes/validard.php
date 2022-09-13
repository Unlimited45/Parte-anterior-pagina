<?php
$ID_persona=$_POST['ID_persona'];
$contraseña=$_POST['contraseña'];
$con=mysqli_connect("localhost","root","","unlimitedd") or die ("ERROR DE CONEXION");
$consulta="SELECT * FROM persona WHERE ID_persona='$ID_persona' AND contraseña='$contraseña'";
$resultado=mysqli_query ($con, $consulta);

$filas=mysqli_num_rows($resultado);

if($filas>0){
	header ("location:Calificaciones.html");	
}
else
{
    echo "ERROR DE AUTENTICACION";

}
mysqli_free_result($resultado);
?>