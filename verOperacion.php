<?php
include("includes/init_session.php");
require("includes/conexion.php");
require("includes/funciones.php");
require("includes/arrays.php");

$fecha = $_GET['fecha'];

function mostrarReceta($id_receta,$archivo,$conexion){

  $sql = "SELECT nombre FROM mixer_recetas WHERE id_receta = '$id_receta' AND archivo = '$archivo'";
  
  $query = mysqli_query($conexion,$sql);

  $resultado = mysqli_fetch_array($query);

  
  return $resultado['nombre'];

}

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

      .tablasOperaciones{

        height:250px;
        overflow-y:scroll;
      
      }


    </style>
    <script type="text/javascript">
    
    function mostrar(id) {
      $("#" + id).show(200);
    }

    function cargarReceta(id_receta,archivo){

      url = 'recetas.ajax.php';

      data = 'idReceta=' + id_receta + '&archivo=' + archivo;

      $.ajax({
        type:'POST',

        url:url,

        data:data,

        success: function(resultado){

          var resultadoParse = JSON.parse(resultado);
          
          var nombre = resultadoParse['nombre'];

          $('#nombreReceta').html(nombre);
          
          var contenido = "<table class='table-striped' style='width:100%;'>";
          
          contenido    += "<thead style='background-color:#d7f0c0;font-size:1.3em;'><th>Ingrediente</th><th>Cantidad</th>";
          contenido    += "<tbody style='text-align:center;'>";

          
          for (let index = 1; index < 20; index++) {

            if (resultadoParse['ingrediente' + index] != null) {
              
              contenido    +=   "<tr><td>" + resultadoParse['ingrediente' + index] + "</td>";

              contenido    +=   "<td>" + resultadoParse['cantidad' + index] + " Kg</td></tr>";

            }

          }

              contenido    += "<tbody></table>";
              
              $('#ingredientes').append(contenido);
          
        }
      });

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
        <form class="well form-inline">

          <label>Mixer</label>

          <select name="mixer" id="mixer" class="input-small">

            <option value="">Seleccionar Mixer</option>
            
            <option value="mixer1">456ST</option>

            <option value="mixer2">Mixer 2</option>

          </select>
          

          <label>Carga/Descarga</label>

          <select name="tipo" id="tipo" class="input-medium">

            <option value="cargaDescarga">Cargas/Descargas</option>
            
            <option value="carga">Cargas</option>

            <option value="descarga">Descargas</option>

          </select>
          

          <label class="lotes">Lotes</label>

          <select multiple="multiple" id="Lotes" size="3" class="lotes" class="input-small">
          <?php

            $sqlLotes = "SELECT DISTINCT(lote) FROM mixer_descargas WHERE fecha = '$fecha' ORDER BY lote ASC";
            $queryLotes = mysqli_query($conexion,$sqlLotes);

            while($lote = mysqli_fetch_array($queryLotes)){

              $loteNum = $lote['lote'];

              echo "<option value='$loteNum'>$loteNum</option>";

            }
      
          ?>

          </select>


          <button type="submit" class="btn" id='filtrar'>Filtrar</button>
      
        </form>
          <button class="btn btn-default" id='btnTablaCargas'><b>Cargas <span style='color:green;'><b>&uarr;</b></span></b></button><br>

          <div class="tablasOperaciones" id="tablaCargas">

            <table class="table table-striped">
                
                <thead>
                                    
                    <th>N°</th>

                    <th>Mixer</th>

                    <th>Fecha</th>
                    
                    <th>Hora</th>
                    
                    <th>Ingrediente</th>
                    
                    <th>Cantidad</th>
                    
                    <th>Ideal</th>
                    
                    <th>Receta</th>

                </thead>

                <tbody>
                <?php
                    $cont = 1;

                    $sqlCargas = "SELECT * FROM mixer_cargas WHERE fecha = '$fecha' ORDER BY hora ASC";

                    $queryCargas = mysqli_query($conexion,$sqlCargas);

                    while($cargas = mysqli_fetch_array($queryCargas)){ 
                        
                        $mixer     = ($cargas['mixer'] == 'mixer1') ? '456ST' : 'Mixer 2';
                        
                        $id_receta = $cargas['id_receta'];

                        $archivo   = $cargas['archivo'];

                    ?>
                    <tr>
                    
                        <td><?php echo $cont;?></td>

                        <td><?php echo $mixer;?></td>
                    
                        <td><?php echo formatearFecha($cargas['fecha']);?></td>

                        <td><?php echo $cargas['hora'];?></td>

                        <td><?php echo $cargas['ingrediente'];?></td>

                        <td><?php echo $cargas['cantidad'].' Kg';?></td>

                        <td><?php echo $cargas['ideal'].' Kg';?></td>
    
                        <td><button class="btn btn-default" data-toggle="modal" data-target="#modalReceta" onclick="cargarReceta('<?php echo $id_receta;?>','<?php echo $archivo;?>')"><?php echo mostrarReceta($id_receta,$archivo,$conexion);?></button></td>
                        
                    <?php

                      $cont++;
                    
                    }

                    ?>
                </tbody>  
            </table>

          </div>
          <hr>
          <button class="btn btn-default" id='btnTablaDescargas'><b>Descargas <span style='color:blue'>&darr;</span></b></button>

          <div class="tablasOperaciones" id="tablaDescargas">

            <table class="table table-striped">
                
                <thead>
                                    
                    <th>N°</th>

                    <th>Mixer</th>

                    <th>Fecha</th>
                    
                    <th>Hora</th>
                    
                    <th>Lote</th>
                    
                    <th>Cantidad</th>
                    
                    <th>Animales</th>
                    
                    <th>Operario</th>

                </thead>

                <tbody>
                <?php
                    $cont = 1;
                    $sqlDescargas = "SELECT * FROM mixer_descargas WHERE fecha = '$fecha' ORDER BY hora ASC, lote ASC";
                    
                    $queryDescargas = mysqli_query($conexion,$sqlDescargas);

                    while($descargas = mysqli_fetch_array($queryDescargas)){ 
                        
                        $mixer = ($descargas['mixer'] == 'mixer1') ? '456ST' : 'Mixer 2';

                    ?>
                    <tr>
                    
                        <td><?php echo $cont;?></td>

                        <td><?php echo $mixer;?></td>
                    
                        <td><?php echo formatearFecha($descargas['fecha']);?></td>

                        <td><?php echo $descargas['hora'];?></td>

                        <td><?php echo $descargas['lote'];?></td>

                        <td><?php echo $descargas['cantidad'].' Kg';?></td>

                        <td><?php echo $descargas['animales'];?></td>
    
                        <td><?php echo $descargas['operario'];?></td>
                        
                    <?php

                      $cont++;
                    
                    }

                    ?>
                </tbody>  
            </table>

          </div>
        
          <hr>
        
        <a href="raciones.php" class="btn btn-primary">Volver</a>

        <br>
        <hr>
      <footer>
        <p>Gesti&oacute;n de FeedLots - Jorge Cornale - 2018</p>
      </footer>
    </div>
    
    <div class="modal fade" style="width: 350px;margin: 0 auto;margin-left:-175px;z-index:9999;" id="modalReceta" tabindex="-1" role="dialog" aria-hidden="true">
      
      <div class="modal-dialog" role="document">
      
        <div class="modal-content">
        
          <div class="modal-header">
          
            <h2 class="modal-title">Receta</h2>
            
            <button type="button" class="close" data-dismiss="modal" aria-label="Close"></button>
            
          </div>
          
          <div class="modal-body">
          
          <div class="row-fluid">
            
            <div class="span5"><h3>Nombre: </h3></div>
            
            <div class="span5" id='nombreReceta' style="font-size:1.5em;font-weight:bold;"></div>
                    
          </div>
          
          <div class="row-fluid">

            <div class="span12" id="ingredientes">
            
            </div>

          </div>
                    
          </div>
          
        </div>
        
      </div>

    </div>

    <script type="text/javascript">

    $(function () {

      $('.lotes').css('display','none');

      $('#tipo').change(function(){
          
        if($(this).val() == 'descarga'){
          
          $('.lotes').css('display','inline-block');

        }else{

          $('.lotes').css('display','none');

        }

      });


      $('#btnTablaDescargas').click(()=>{
        
        $('#tablaDescargas').toggle(1000);
        
      });

      $('#btnTablaCargas').click(()=>{
        
        $('#tablaCargas').toggle(1000);
        
      });



    });



   </script>


    <!-- Le javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="js/functions.js"></script>
    <script src="js/bootstrap.min.js"></script>
   
  </body>
</html>
