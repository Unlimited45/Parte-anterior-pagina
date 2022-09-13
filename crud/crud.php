<?php
    include("conexion.php");
    $con=conectar();

    $sql="SELECT * FROM persona;";
    $query=mysqli_query($con,$sql);
 

    
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>UNLIMITED</title>
    <link href="css/style.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
</head>
<body>
    <div class="container mt-5">
        <div class="row">

            <div class="col-md-3">
                <h1 class="display-6 text-dark">Ingreso de datos</h1>
                <h1 class="display-6 text-warning">-------------------</h1>
                    <form action="insertar.php" method="POST">
                        <input type="text" class="form-control mb-3" name="ID_persona" placeholder="Id persona">
                        <input type="text" class="form-control mb-3" name="nombres" placeholder="Nombres">
                        <input type="text" class="form-control mb-3" name="apellidos" placeholder="Apellidos">
                        <input type="text" class="form-control mb-3" name="fecha_nacimiento" placeholder="fecha_nacimiento">
                        <input type="text" class="form-control mb-3" name="direccion" placeholder="Direccion"> 
                        <input type="text" class="form-control mb-3" name="telefono" placeholder="Telefono"> 
                        <input type="text" class="form-control mb-3" name="correo" placeholder="Correo">
                        <input type="text" class="form-control mb-3" name="contraseña" placeholder="Contraseña">
                        <input type="text" class="form-control mb-3" name="Codigo_curso" placeholder="Codigo_curso">
                        <input type="text" class="form-control mb-3" name="ID_rol" placeholder="Rol">
                        <input type="text" class="form-control mb-3" name="ID_permisos" placeholder="Permisos">
                        <h1 class="display-6 text-warning">-------------------</h1>
                        <center> 
                        <input type="submit" class="btn btn-dark">
                        </center>
                        
                    </form>

            </div>

            <div class="col-md-8">
                <div class="col-md-8">
                    <table class="table">
                        <thead class="table-warning table-striped">
                            <tr>
                                <th>Identificacion</th>
                                <th>Nombres</th>
                                <th>Apellidos</th>
                                <th>Fch.Nacimiento</th>
                                <th>Direccion</th>
                                <th>Telefono</th>
                                <th>Correo</th>
                                <th>Contraseña</th>
                                <th>Cod.Curso</th>
                                <th>Rol</th>
                                <th>Permisos</th>
                                <th></th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                                while($row=mysqli_fetch_array($query)){
                            ?>
                                <tr>
                                    <th><?php echo $row['ID_persona']?></th>
                                    <th><?php echo $row['nombres']?></th>
                                    <th><?php echo $row['apellidos']?></th>
                                    <th><?php echo $row['fecha_nacimiento']?></th>
                                    <th><?php echo $row['direccion']?></th>
                                    <th><?php echo $row['telefono']?></th>
                                    <th><?php echo $row['correo']?></th>
                                    <th><?php echo $row['contraseña']?></th>
                                    <th><?php echo $row['Codigo_curso']?></th>
                                    <th><?php echo $row['ID_rol']?></th>
                                    <th><?php echo $row['ID_permisos']?></th>
                                    <th><a href="actualizar.php?id=<?php echo $row['ID_persona'] ?>" class="btn btn-dark">Editar</a></th>
                                    <th><a href="delete.php?id=<?php echo $row['ID_persona'] ?>" class="btn btn-danger">Eliminar</a></th>
                                    
                                    

                                </tr>
                                <?php
                                }
                                ?>
                                
                            
                            
                        </tbody>

                    </table>

                </div>
            </div>
        </div>


    </div>
</body>
</html>