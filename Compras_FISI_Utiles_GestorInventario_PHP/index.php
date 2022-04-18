<!DOCTYPE html>
<html>
<head>
	<title>Registrar usuario</title>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="estilo.css">
</head>
<body>
    <form method="post">
    	<h1>¡Invetario de Articulos!</h1>
        <input type="text" name="id" placeholder="Codigo del Producto">
    	<input type="text" name="nombre" placeholder="Nombre del Producto">
    	<input type="text" name="descripcion" placeholder="Descripcion del Producto">
        <input type="text" name="precio" placeholder="Precio del Producto">
        <input type="text" name="stock" placeholder="Stock del Producto">

    	<input type="submit" name="anadir">
    </form>
        <?php 
        include("registrar.php");
        ?>
</body>
</html>