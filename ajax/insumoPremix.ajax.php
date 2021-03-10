<?php
    
    include('../includes/conexion.php');

    $id = $_POST['idInsumo'];

    $sql = "SELECT precio FROM insumosPremix WHERE id = '$id'";

    $query = mysqli_query($conexion,$sql);

    $resultado = mysqli_fetch_array($query);


    $precioInsumo = $resultado['precio'];
    
    echo $precioInsumo;

?>