<?php
include 'global/config.php';
include 'carrito.php';
include 'templates/cabecera.php';
//include 'login/conexionL.php';
//$conn = conectar();
?>

<br>
<h3>Lista del carrito</h3>
<?php if(!empty($_SESSION['CARRITO'])) { ?>
    <table class="table table-light table-bordered">
        <tbody>
            <tr>
                <th width=40%>Descripción</th>
                <th width=15% class="text-center">Cantidad</th>
                <th width=20% class="text-center">Precio</th>
                <th width=20% class="text-center">Total</th>
                <th width=5%>--</th>
            </tr>
            <?php $total=0; ?>
            <?php foreach($_SESSION['CARRITO'] as $indice=>$producto){?>
            <tr>
                <td width=40%><?php echo $producto['NOMBRE']?></th>
                <td width=15% class="text-center"><?php echo $producto['CANTIDAD']?></th>
                <td width=20% class="text-center"><?php echo $producto['PRECIO']?></th>
                <td width=20% class="text-center"><?php echo number_format($producto['PRECIO']*$producto['CANTIDAD'],2)?></th>
                <td width=5%> <form action="" method="post">
                    <input type="hidden" name="id" id="id" value="<?php echo openssl_encrypt($producto['ID'],COD,KEY);?>">
                    <button class="btn btn-danger" type="submit" name="btnAccion" value="Eliminar">Eliminar</button></th>
                </form>
            </tr>
            <?php $total=$total+($producto['PRECIO']*$producto['CANTIDAD']); ?>
            <?php } ?>
            <tr>
                <td colspan="3" align="right"><h3>Total</h3></td>
                <td align="right"><h3>$<?php echo number_format($total,2);?></h3></td>
                <td></td>
            </tr>
            <tr>
                <td colspan="5">
                    <form action="pagar.php" method = "post">
                        <div class="alert alert success">
                                <div class="form-group">
                                    <label for="my-input">Correo de contacto:</label>
                                    <input id="email" name="email" class="form-control" type="email"
                                    <?php if(!empty($user)){?> value=<?php $_POST['CORREO']; }
                                    else { ?> placeholder="Introduzca su correo" required> <?php } ?>
                                </div>
                            <small id="emailHelp" class="form-text text muted">Los productos se enviarán a este correo.</small>
                        </div>
                        <div class="btn-group btn-group-toggle" data-toggle="buttons">
                            <label>
                                <input id="pago" name="tarjeta" type="radio" checked>Pago con tarjeta&nbsp;
                                <input id="pago" name="paypal" type="radio">Pago con PayPal<br> <br>
                            </label>
                        </div> <br>
                        <button class="btn btn-primary btn-lg btn-block" type="submit" name="btnAccion" value="Proceder">Proceder a pagar</button>
                    </form>
                </td>
            </tr>
        </tbody>
    </table>

    <a href="reportes.php"> PDF
<?php } else{?>
    <div class="alert alert-success" role="alert">
        No hay productos en el carrito
    </div>
<?php } ?>

<?php include 'templates/pie.php';?>