<?php
include("conexion.php");
$con=conectar();

$id=$_POST['ID'];
$nombre=$_POST['NOMBRE'];
$precio=$_POST['PRECIO'];
$disp=$_POST['DISP'];

$sql="INSERT INTO nproductos VALUES('$id','$nombre','$precio','$disp')";
$query= mysqli_query($con,$sql);

if($query){
    Header("Location: inventario.php");
}else {
}
?>