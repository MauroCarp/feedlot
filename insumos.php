<div class="row-fluid">
  <div class="span6" style="border-right: solid 1px #A8A8A8;height: 500;max-height: 500px;overflow-y: scroll;">                      
    <table class="table table-striped" style="font-weight: bold;">
      <thead>
        <th>Insumo</th>
        <th>Precio</th>
        <th>% MS</th>
        <th></th>
      </thead>
      <tbody>
        <?php
        $sql = "SELECT * FROM insumos ORDER BY insumo ASC";
        $query = mysqli_query($conexion,$sql);
        $insumos = array();
        while ($resultado = mysqli_fetch_array($query)) {
          $insumos[] = $resultado['insumo'];
        }
        $insumos = array_unique($insumos);
        $insumos = array_values($insumos);

        for ($i=0; $i < sizeof($insumos) ; $i++) { 
          $ultimaFecha = ultimaFecha($insumos[$i],$conexion);
          $resultado = traeDatos($ultimaFecha,$insumos[$i],$conexion);  
?>

          <tr>
            <td><?php echo $resultado['insumo']?></td>
            <td><?php echo "$ ".$resultado['precio']?></td>
            <td><?php echo $resultado['porceMS']." %"?></td>
            <td><a href="#" data-toggle="modal" data-target="#modal-modificarInsumo<?php echo $resultado['id'];?>" onclick="zindexModal(<?php echo $resultado['id'];?>)"><span class="icon-pencil"></span></a></td>
            <td><a href="raciones.php?accion=eliminarInsumo&isumo=<?php echo $resultado['insumo'];?>&id=<?php echo $resultado['id'];?>" onclick="return confirm('¿Eliminar Insumo?');"><span class="icon-cross"></span></a></td>

          </tr>

            <div class="modal fade zindex-<?php echo $resultado['id'];?>" id="modal-modificarInsumo<?php echo $resultado['id'];?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
              <div class="modal-dialog" role="document">
                <div class="modal-content">
                  <div class="modal-header">
                    <h2 class="modal-title" id="exampleModalLabel">Modificar Insumo</h2>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    </button>
                  </div>
                  <form style="margin-bottom: 10px;" method="POST" action="raciones.php?accion=modificarInsumo&id=<?php echo $resultado['id'];?>">
                    <div class="modal-body">    
                      <div class="row-fluid">
                        <div class="span3">
                          <b>Insumo:</b>
                        </div>
                        <div class="span5">
                          <input type="text" class="form-control" name="insumo" value="<?php echo $resultado['insumo']?>" readonly/>
                        </div>
                      </div>
                      <div class="row-fluid">
                        <div class="span3">
                          <b>Precio:</b>
                        </div>
                        <div class="span5">
                          <input type="number" step="0.01" name="precio" value="<?php echo $resultado['precio']?>" required/>
                        </div>
                      </div>
                      <div class="row-fluid">
                        <div class="span3">
                          <b>% MS:</b>
                        </div>
                        <div class="span5">
                          <input type="number" step="0.01" name="porceMS" value="<?php echo $resultado['porceMS']?>" required/>
                        </div>
                      </div>
                    </div>
                    <div class="modal-footer" style="padding: 10px 15px 10px 0;">
                      <button type="submit" class="btn btn-primary">Modificar</button>
                      <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                    </div>
                  </form>
                </div>
              </div>
            </div>
        <?php  }
        ?>
        <form method="POST" action="raciones.php?accion=nuevoInsumo">
          <tr>
            <td>
                <input type="text" class="form-control" name="insumo" required/>
            </td> 
            <td>
              <input type="number" step="0.01" class="form-control input-small" name="precio" required/>  
            </td>
            <td>
              <input type="number" step="0.01" class="form-control input-small" name="porceMS" required/>  
            </td>
            <td colspan="2"></td>
          </tr>
          <tr>
            <td></td>
            <td></td>
            <td colspan="3"><button type="submit" class="btn btn-large btn-primary">Agregar Insumo</button></td>
          </tr>
        </form>
      </tbody>
    </table>
  </div>
  <div class="span6" style="height: 450;max-height: 450px;overflow-y: scroll;">
    <h3>Historial de Precios de Insumos</h3>
        <table class="table table-striped">
          <thead style="font-weight: bold;">
            <th>Fecha Actulizaci&oacute;n</th>
            <th>Insumo</th>
            <th>$ TC</th>
            <th>% MS</th>
            <th>$ MS</th>
            <th></th>
          </thead>
          <tbody>
    <?php
      $sqlRegistros = "SELECT * FROM registroinsumo ORDER BY fecha DESC, insumo ASC";
      $queryRegistros = mysqli_query($conexion,$sqlRegistros);
      while ($filaRegistros = mysqli_fetch_array($queryRegistros)) { ?>
        <tr>
          <td><?php echo formatearFecha($filaRegistros['fecha']);?></td>
          <td><?php echo $filaRegistros['insumo'];?></td>
          <td><?php echo "$ ".$filaRegistros['precio'];?></td>
          <td><?php echo $filaRegistros['porceMS']." %";?></td>
          <td><?php 
          if ($filaRegistros['porceMS'] != 0) {
              echo "$ ".number_format((100 *$filaRegistros['precio']) / $filaRegistros['porceMS'],2);
          }else{
              echo "$ 0";
                }
          ?> 
          </td> 
          <td><a href="raciones.php?accion=eliminarRegistro&id=<?php echo $filaRegistros['id'];?>" onclick="return confirm('¿Eliminar registro?')"><span class="icon-cross"></span></a></td>
        </tr>    
          
     <?php }
    ?>
          </tbody>
        </table>
  </div>
</div>