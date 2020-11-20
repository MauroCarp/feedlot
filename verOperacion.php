<?php
include("includes/init_session.php");
require("includes/conexion.php");
require("includes/funciones.php");
require("includes/arrays.php");

$fecha = $_GET['fecha'];
$tipo = $_GET['tipo'];


if($tipo == 'Carga'){

    $ingredienteLote = 'ingrediente';
    
    $tabla = 'mixer_cargas';
    
    $columna5 = 'Receta';
    
    $columna6 = 'Ideal';
    
    
    
}else{

    $ingredienteLote = 'lote';

    $tabla = 'mixer_descargas';

    $columna5 = 'Cant. Animales';

    $columna6 = 'Operario';


}
$sql = "SELECT * FROM $tabla WHERE fecha = '$fecha' ORDER BY mixer ASC, hora ASC";
$query = mysqli_query($conexion,$sql);

?>

<!DOCTYPE html>
<html lang="es">
  <head>
    <meta charset="utf-8">
    <title>JORGE CORNALE - GESTION DE FEEDLOTS</title>
    <link rel="icon" href="img/ico.ico" type="image/x-icon"/>
    <link rel="shortcut icon" href="img/ico.ico" type="image/x-icon"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="js/jquery-2.2.4.min.js"></script>
    <link href="css/bootstrap.css" rel="stylesheet">
    <script src="js/chart/dist/Chart.bundle.js"></script>
    <script src="js/chart/samples/utils.js"></script>
    <link href="css/bootstrap-responsive.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <style type="text/css">
      body {
        padding-top: 60px;
        padding-bottom: 10px;
      }
    </style>
    <script type="text/javascript">
    
    function mostrar(id) {
      $("#" + id).show(200);
    }
       

    </script>
  </head>

  <body>

    <div class="navbar navbar-inverse navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container">
          <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <?php
          include("includes/nav.php");
          ?>
        </div>
      </div>
    </div>
    <div class="container" style="padding-top: 50px;">
      <h1 style="display: inline-block;">RACIONES</h1>
      <h4 style="display: inline-block;float: right;"><?php echo "Fecha: ".$fechaDeHoy;?></h4>
      <div class="hero-unit" style="padding-top: 10px;margin-bottom: 5px;">
        <h2>Fecha y Tipo de Operación <?php echo formatearFecha($fecha).' - '.$tipo;?></h2>
        <h5></h5>
        <table class="table table-striped">
            
            <thead>
                                
                <th>N°</th>

                <th>Mixer</th>

                <th>Fecha</th>
                
                <th>Hora</th>
                
                <th><?php echo ucfirst($ingredienteLote);?></th>
                
                <th>Cantidad</th>
                
                <th><?php echo $columna5;?></th>
                
                <th><?php echo $columna6;?></th>

            </thead>

            <tbody>
            <?php
                $cont = 1;

                while($resultado = mysqli_fetch_array($query)){ 
                    
                    $mixer = ($resultado['mixer'] == 'mixer1') ? '456ST' : 'Mixer 2';

                ?>
                <tr>
                
                    <td><?php echo $cont;?></td>

                    <td><?php echo $mixer;?></td>
                
                    <td><?php echo $resultado['fecha'];?></td>

                    <td><?php echo $resultado['hora'];?></td>

                    <td><?php echo $resultado[$ingredienteLote];?></td>

                    <td><?php echo $resultado['cantidad'].' Kg';?></td>

                <?php
                    if($tipo == 'Carga'){ ?>

                        <td><?php echo $resultado['ideal'];?></td>
    
                        <td><?php echo $resultado['id_receta'];?></td>
                    
                    <?php
                    
                    }else{ ?>
                        
                        <td><?php echo $resultado['animales'];?></td>
    
                        <td><?php echo $resultado['operario'];?></td>
                    
                    <?php
                    
                    }

                    ?>
                    
                </tr>

            <?php
                $cont++;
                }

            ?>
            </tbody>
        
        </table>

        <a href="raciones.php" class="btn btn-primary">Volver</a>

        <br>
        <hr>
      <footer>
        <p>Gesti&oacute;n de FeedLots - Jorge Cornale - 2018</p>
      </footer>
    </div>

    <script type="text/javascript">

    $(function () {

        console.log('prueba');
        
        
    });

   </script>


    <!-- Le javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="js/functions.js"></script>
    <script src="js/bootstrap.min.js"></script>
   
  </body>
</html>
