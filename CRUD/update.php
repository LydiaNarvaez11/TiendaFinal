<?php

include("conexion.php");
$con=conectar();

$id=$_POST['ID'];
$nombre=$_POST['NOMBRE'];
$precio=$_POST['PRECIO'];
$disp=$_POST['DISP'];

$sql="UPDATE nproductos SET nombre='$nombre', precio='$precio', disp='$disp' WHERE id='$id'";
$query=mysqli_query($con,$sql);

    if($query){
        Header("Location: inventario.php");
    }
?>