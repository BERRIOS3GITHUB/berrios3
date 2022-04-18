<?php 

include("con_db.php");

if (isset($_POST['anadir'])) {
    if (strlen($_POST['id']) >= 1 && strlen($_POST['nombre']) >= 1 && strlen($_POST['descripcion']) >= 1 && strlen($_POST['precio']) >= 1&& strlen($_POST['stock']) >= 1) {

	    $id = trim($_POST['id']);
	    $nombre = trim($_POST['nombre']);
	    $descripcion = trim($_POST['descripcion']);
	    $precio = trim($_POST['precio']);
	    $stock = trim($_POST['stock']);

	    $consulta = "INSERT INTO articulos (id, nombre, descripcion, precio, stock) VALUES ('$id','$nombre','$descripcion','$precio','$stock')";
	    $resultado = mysqli_query($conex,$consulta);
	    if ($resultado) {
	    	?> 
	    	<h3 class="ok">¡Producto guardado en el inventario correctamente!</h3>
           <?php
	    } else {
	    	?> 
	    	<h3 class="bad">¡Ups ha ocurrido un error!</h3>
           <?php
	    }
    }   else {
	    	?> 
	    	<h3 class="bad">¡Por favor complete los campos!</h3>
           <?php
    }
}

?>