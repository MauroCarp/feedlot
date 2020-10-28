<?php
include("includes/init_session.php");
require("includes/conexion.php");
require("includes/funciones.php");
require("includes/arrays.php");



$accionValido = array_key_exists('accion', $_REQUEST);
if ($accionValido) {
  $accion = $_GET['accion'];
  if ($accion == 'nuevaFormula') {
    $nombre = $_POST['nombre'];
    $productos = array();
    $productos[] = $_POST['producto'];
    for ($i=1; $i <=30 ; $i++) { 
      $producto = "producto".$i;
      if (isset($_POST[$producto])) {
        $productos[] = $_POST[$producto];
      }
    }

    if (isset($_POST['productoN'])) {
      $productos[] = $_POST['productoN']; 
      for ($i=1; $i <=30 ; $i++) { 
        $productoN = "productoN".$i;
        if (isset($_POST[$productoN])) {
          $productos[] = $_POST[$productoN];
        }
      }
    }

    $porcentajes = array();

    $porcentajes[] = $_POST['porcentaje'];
    for ($a=1; $a <=30 ; $a++) { 
      $porcentaje = "porcentaje".$a;
      if (isset($_POST[$porcentaje])) {
        $porcentajes[] = $_POST[$porcentaje];
      }
    }

    if (isset($_POST['porcentajeN'])) {
      $porcentajes[] = $_POST['porcentajeN'];
      for ($a=1; $a <=30 ; $a++) { 
        $porcentajeN = "porcentajeN".$a;
        if (isset($_POST[$porcentajeN])) {
          $porcentajes[] = $_POST[$porcentajeN];
        }
      }
    }

    $porcentajeAgua = $_POST['porcentajeAgua'];
    $total = $_POST['total'];

    $tipoFormula = $_POST['tipo'];
    $otroTipo = $_POST['tipoOtra'];

    if ($tipoFormula == 'otro') {
      $tipoFormula = $otroTipo;
      $sqlNueva = "INSERT INTO tipoFormula(tipo) VALUES ('$tipoFormula')";
      $queryNueva = mysqli_query($conexion,$sqlNueva);

    }

    $fechaFormula = date("Y-m-d");
    $sql = "INSERT INTO formulas(fecha,nombre,tipo,agua,precio) VALUES ('$fechaFormula','$nombre','$tipoFormula','$porcentajeAgua','$total')";
    $query = mysqli_query($conexion,$sql);

    $sqlDatos = "SELECT id FROM formulas WHERE tipo = '$tipoFormula' AND nombre = '$nombre'";
    $queryDatos = mysqli_query($conexion,$sqlDatos);
    $fila = mysqli_fetch_array($queryDatos);
    $id = $fila['id'];


    for ($i=0; $i < sizeof($productos) ; $i++) {
      $producto = "p".($i+1);
      $sqlProductos = "UPDATE formulas SET $producto = '$productos[$i]' WHERE id = '$id'"; 
      $queryProductos = mysqli_query($conexion,$sqlProductos);
      echo mysqli_error($conexion);
    }


    for ($i=0; $i < sizeof($porcentajes) ; $i++) {
      $porcentaje = "por".($i+1);

      $sqlPorc = "UPDATE formulas SET $porcentaje = '$porcentajes[$i]' WHERE id = '$id'"; 
      $queryPorc = mysqli_query($conexion,$sqlPorc);
      echo mysqli_error($conexion);
    }      
    header("Location:raciones.php?seccion=formulas");

  }
}

$id = $_GET['id'];

$sql = "SELECT * FROM formulas WHERE id = '$id'";
$query = mysqli_query($conexion,$sql);
$fila = mysqli_fetch_array($query);

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
    <script type="text/javascript" src="js/tableSorter/jquery.tablesorter.js"></script>
    <script type="text/javascript" src="js/tableSorter/jquery.tablesorter.widgets.js"></script>
    <link href="css/bootstrap-responsive.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <style type="text/css">
      body {
        padding-top: 60px;
        padding-bottom: 10px;
      }
    </style>

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
        <h2>Formula <?php echo $fila['tipo']." - ".$fila['nombre'];?></h2>
            <div class="row-fluid">
              <div class="span12">
                <b>Composici&oacute;n de la dieta | Precio por Kilo: $<span id="precioKiloComp"><?php echo $fila['precio'];?></span> | Precio por Kilo MS: $<span id="precioMSCom"></span> | Total % de MS: <span id="totalPorMSComp"></span>%</b>    
              </div>
            </div>
            <hr>
            <div class="row-fluid" style="border-bottom: 2px solid #7D7D7D">
              <div class="span2"><b>Producto</b></div>
              <div class="span1" style="line-height:1em;"><b>% en la Dieta</b></div>
              <div class="span1"><b>% TC</b></div>
              <div class="span1" style="line-height:1em;"><b>Precio Insumo</b></div>
              <div class="span1"><b>$/Kg MF</b></div>
              <div class="span1" style="line-height:1em;"><b>% MS Insumo</b></div>
              <div class="span2"><b>% MS en la Dieta</b></div>
            </div>
            <div class="row-fluid" style="border-bottom: 1px solid #7D7D7D">
              <div class="span2"><?php echo nombreInsumo('p1',$fila['p1'],$conexion);?></div>
              <div class="span1 porcentajeComp"><?php echo $fila['por1']." %";?></div>
              <div class="span1"><?php echo number_format(porceTC($fila['agua'],$fila['por1']),2,",",".");?> %</div>
              <div class="span1"><?php echo "$ ".precioInsumo('p1',$fila['p1'],$conexion);?></div>
              <div class="span1"><?php echo "$ ".number_format((porceTC($fila['agua'],$fila['por1']) * precioInsumo('p1',$fila['p1'],$conexion))/100,2,",",".")?></div>
              <div class="span1 porcentajeMScomp<?php echo $fila['id'];?>_0"><?php 
                $porMS = tomaPorcentajeMS('p1',$fila['p1'],$conexion);
                echo $porMS." %";?>
              </div>
              <div class="span2 porcentajeDeMateriaSeca">
                <?php echo formatearNum(((porceTC($fila['agua'],$fila['por1'])*$porMS)/100))." %";?>
              </div>
            </div>
            <?php 
            for ($i=1; $i < 11 ; $i++) { 
              $producto = "p".($i+1);
              $porcentaje = "por".($i+1);
              if($fila[$producto] != ''){ 
                $precioInsumo = precioInsumo($producto,$fila[$producto],$conexion);
                $porcentajeMS = tomaPorcentajeMS($producto,$fila[$producto],$conexion);
                ?>
                <div class="row-fluid" style="border-bottom: 1px solid #7D7D7D">
                  <div class="span2"><?php echo nombreInsumo($producto,$fila[$producto],$conexion);?></div>
                  <div class="span1 porcentajeComp"><?php echo $fila[$porcentaje]." %";?></div>
                   <div class="span1"><?php echo number_format(porceTC($fila['agua'],$fila[$porcentaje]),2,",",".");?> %</div>
                  <div class="span1"><?php echo "$ ".precioInsumo($producto,$fila[$producto],$conexion);?></div>
                  <div class="span1"><?php echo "$ ".number_format((porceTC($fila['agua'],$fila[$porcentaje]) * precioInsumo($producto,$fila[$producto],$conexion))/100,2,",",".")?></div>
                  <div class="span1 porcentajeMScomp<?php echo $fila['id']."_".$i;?>"><?php
                  ${"porMS".$i+1} = tomaPorcentajeMS($producto,$fila[$producto],$conexion);
                  echo ${"porMS".$i+1}." %";?></div>
                  <div class="span2 porcentajeDeMateriaSeca">
                    <?php echo formatearNum(((porceTC($fila['agua'],$fila[$porcentaje])*${"porMS".$i+1})/100))." %";?>
                  </div>
                </div>
            <?php  }
            }
            ?>
            <div class="row-fluid" style="border-bottom: 1px solid #7D7D7D">
              <div class="span2">Agua</div>
              <div class="span1"><?php echo $fila['agua']." %";?></div>
               <div class="span1"><?php echo number_format(porceTC($fila['agua'],$fila['agua']),2,",",".");?> %</div>
              <div class="span2"></div>
              <div class="span2"></div>
              <div class="span2"></div>
            </div>
         <hr>


         <!-- LISTADO COMPARATIVO -->
        <?php
          $query2 = mysqli_query($conexion,$sql);
          $comp = mysqli_fetch_array($query2);

        // CARGAR NUEVO

        include('modificarFormula.php');          
        ?>
      </div>
      <hr>
      <footer>
        <p>Gesti&oacute;n de FeedLots - Jorge Cornale - 2018</p>
      </footer>
    </div>

    <!-- Le javascript
    ================================================== -->
   <?php
    $sqlInsumo = "SELECT * FROM insumos ORDER BY insumo ASC";
    $queryInsumo = mysqli_query($conexion,$sqlInsumo);
    $insumos = array();
    while ($resultado = mysqli_fetch_array($queryInsumo)) {
      $insumos[] = $resultado['insumo'];
    }
    $insumos = array_unique($insumos);
    $insumos = array_values($insumos);
  ?>
    <script type="text/javascript" async="async">
    
    var cargarPrecioPorcentajeConAgua = ()=>{
      let i = 0;
      $('.importe_linea').each(()=>{
        let precioTC = $('#precio' + i + ' input').val();
        let porcentaje = parseFloat($('#porcentaje' + i).val());
        let porcentajeTC = calcularPorcentajeConAgua(porcentaje);
        let precioPorcentaje = calcularPrecioPorcentaje(precioTC,porcentajeTC);
        $('#precioPor' + i).val(precioPorcentaje.toFixed(2));

        i += 1;
      })
    }

    var calcularPorcentajeConAgua = (porcentaje,agua,totalPorcentaje)=>{
        let porcentajeTotal = parseFloat(totalPorcentaje) + parseFloat(agua);
        let porcentajeTC = (porcentaje * 100) / porcentajeTotal; 

        return porcentajeTC;
    }
    

    function calcularPrecioPorcentaje(precioTC,porcentajeTC){
      let precioPorcentaje = (porcentajeTC * precioTC) / 100;
      return precioPorcentaje;
    }


      var contador = 0;
      var contadorInsumo = 0;
      var contadorAjax = 0;
      var totalPorcentaje = 0;
      let i = 0;
      $('.porcentajes').each(()=>{
        totalPorcentaje += parseFloat($('#porcentaje' + i).val());
        i += 1;
      })

      let agua = $('#porcentajeAgua').val();

      $(document).ready(function(){
        // CARGAR PRECIO POR KG MS
          var porcentajes = [];
          var a;
          $('.porcentajeComp').each(function(){
            a = $(this).text();
            a = $.trim(a);
            a = parseFloat(a.substring(0,2));
            porcentajes.push(a);
          });

          var porcentajesMS = [];
          var b;
          $('.porcentajeMScomp').each(function(){
            b = $(this).text();
            b = $.trim(b);
            b = parseFloat(b.substring(0,2));
            porcentajesMS.push(b);
          });

          var totalPorMSComp = 0;

          $('.porcentajeDeMateriaSeca').each(function(){
            var porcentajeMSTotal = ($(this).text()).trim();
            porcentajeMSTotal = parseFloat(porcentajeMSTotal.slice(0,-1).replace(",","."));
            totalPorMSComp += porcentajeMSTotal;
          });

          $('#totalPorMSComp').text(totalPorMSComp);
          var precioKiloMScomp;
          precioKiloMScomp = ((100 * parseFloat($('#precioKiloComp').text())) / totalPorMSComp).toFixed(2);
          $('#precioMSCom').text(precioKiloMScomp);

        // MODIFICAR HTML
          $('.span8 span b').text('Nueva Formula');
          $('.botonCarga').text('Cargar Formula');
          var action = document.getElementById('cargaFormula');
          action.setAttribute('action','compararDietas.php?accion=nuevaFormula');
          $('input[name=nombre]').val('');

        // OTRO TIPO DE FORMULA
          $(".tipoFormulaOtro").hide();
          $("#selectTipoFormula").change(function(){
          $(".tipoFormulaOtro").hide();
          var tipo = $(this).val();
          if (tipo == "otro") {
              $("#mostrarOtro").show();
          }
          });

        // CONTADOR DE PRODUCTOS
        $('.select-insumos').each(function(){
        contador++;
        });

        // CARGA DE VALORES
          $('.select-insumos').each(function(){
            var idProducto = $(this).val();
            var contenedorPrecio = '#precio' + contadorInsumo;
            $.ajax({
              type: "POST",
              url: 'consulta.php',
              data: 'insumo='+idProducto,
              success: function(resp){
                $(contenedorPrecio).html(resp);
              }
            });
            var porcentaje = $('#porcentaje' + contadorInsumo).val();
            $('#totalPorcentaje').val(totalPorcentaje.toFixed(0));

            let porcentajeTC = calcularPorcentajeConAgua(porcentaje,agua,totalPorcentaje);
            $('#porcentajeTC' + contadorInsumo).val(porcentajeTC.toFixed(2));


            var precioTC = 0;
            $.ajax({
              type: "POST",
              url: 'consultaPrecioTC.php',
              data: 'id=' + idProducto,
              success: function(resp){
                resp = parseFloat(resp);
                precioTC = resp;
                idPrecioPor = '#precioPor' + contadorAjax;
                var resultadoPorcentaje = calcularPrecioPorcentaje(precioTC,porcentajeTC);
                $(idPrecioPor).val(resultadoPorcentaje.toFixed(2)); 
                contadorAjax++;
              }
            });
          
            contadorInsumo++;
          });
          $('#porcentajeAguaTC').val(calcularPorcentajeConAgua(agua,agua,totalPorcentaje).toFixed(2));  


        // MOSTRAR ZINDEX MODAL 
          $(".modal").each(function(){
            $(this).css('z-index',0);
          })
      
      });
        let inputAgua = document.getElementById('porcentajeAgua');
        inputAgua.addEventListener('blur',()=>{
          let i = 0;
          let totalPorcentaje = $('#totalPorcentaje').val();
          let agua = $('#porcentajeAgua').val();
          let porcentajeTotal = parseFloat(totalPorcentaje) + parseFloat(agua);
          $('.porcentajes').each(()=>{
            let porcentaje = parseFloat($('#porcentaje' + i).val());
            let precioTC = $('#precio' + i + ' input').val();


            let porcentajeTC = (porcentaje * 100) / porcentajeTotal;
            $('#porcentajeTC' + i).val(porcentajeTC.toFixed(2));

            let precioPorcentaje = calcularPrecioPorcentaje(precioTC,porcentajeTC);

            $('#precioPor' + i).val(precioPorcentaje.toFixed(2));
            i += 1; 
          })

          $('#porcentajeAguaTC').val(((agua*100)/porcentajeTotal).toFixed(2)); 
        })



        $('.btn-agregarProducto').click(function( event ) {
          div = '<div class="row-fluid producto' + contador +'">';

          div += '<div class="span3">';

          div += '<select class="form-control select-insumos input-medium" name="producto' + contador +'" id="producto' + contador + '" onblur="CargarProductos(this.value,this.id);">';

          div += '<option value="">Seleccionar Insumo</option>';

          <?php 
          for ($i=0; $i < sizeof($insumos) ; $i++) { 
          $ultimaFecha = ultimaFecha($insumos[$i],$conexion);
          $resultadoInsumo = traeDatos($ultimaFecha,$insumos[$i],$conexion);
          ?>
          div += '<option value="<?php echo $resultadoInsumo['id'];?>"><?php echo $resultadoInsumo['insumo'];?></option>';
          <?php } ?>
          div += '</select></div>';

          div += '<div class="span2">';

          div += '<input type="text" class="form-control input-small porcentajes" id="porcentaje' + contador + '" name="porcentaje' + contador + '" value="0" onblur="controlCero(\'porcentaje' + contador + '\')" disabled="true" required/></div>';

          div += '<div class="span2">';

          div += '<input type="text" style="font-weight: bold" class="form-control input-small porcentajesTC" id="porcentajeTC' + contador + '" value="0" readonly/></div>';

          div += '<div class="span2" id="precio' + contador + '"></div>';

          div += '<div class="span2"><input type="text" style="font-weight: bold" value="0" id="precioPor' + contador + '" class="input-small importe_linea" readonly></div>'; 

          div += '<div class="span1"><span class="icon-bin2" style="cursor: pointer;" onclick="eliminarProducto(\'producto' + contador + '\')"></span></div>';
         $('.contenedor-producto').append(div)
           contador ++; 
        });

      <?php
        require_once('js/raciones.php');
      ?>

    </script>           
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="js/functions.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/functions.js"></script>

  </body>
</html>
