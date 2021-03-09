
<div class="row-fluid">

    <div class="span8" style="border-right:1px solid grey;">

      <form method="POST" action="raciones.php?accion=nuevoPremix">

        <div class="span1">

          <b>Premix:</b>

        </div>

        <div class="span4" style="padding-left:15px;">

          <input type="text" name="nombre" class="form-control" placeholder="Nombre Premix">

        </div>

        <div class="row-fluid">

          <div class="span12">

            <b>Composici&oacute;n</b>

          </div>

        </div>

        <div class="row-fluid">

          <div class="span3"><b>Insumo</b></div>

          <div class="span2"><b>Kilos</b></div>

          <div class="span2"><b>$ Precio</b></div>

        </div>

        <div class="contenedor-insumoPre">

          <div class="row-fluid insumoPre">

            <div class="span3 ">

              <select class="form-control select-insumos input-medium mi-selector" name="insumoPre" id="insumoPre0" onchange="cargarPrecioInsumoPremix(this.value,this.id);">

                <option value="" style="font-size:.5em!important;">Seleccionar Insumo</option>

              </select>

            </div>

            <div class="span2">

              <input type="text"  style="font-weight: bold" value="0" id="kilosPre0" class="input-small" readonly>

            </div>

            <div class="span2">

              <input type="text" class="form-control input-small preciosPre" id="precioPre0" name="precioPre" value="0" disabled="true" required/>

            </div>


            <div class="span1">

            </div>

          </div>

        </div>

        <hr>

        <div class="row-fluid">

          <div class="span6">

            <button type="button" class="btn btn-inverse btnAgregarInsumo" id="btnAgregarInsumo">+ Agregar Insumo</button>

          </div>

          <div class="span6">

            <div class="span2">

              <b>%MS:</b>

            </div>

            <div class="span4">

              <input type="number" name="porcentajeMSPre" class="form-control input-small">

            </div>

          </div>

        </div> 

        <br>

        <div class="row-fluid">

          <div class="span8"></div>

          <div class="span4">

            <button type="submit" class="btn btn-large btn-primary btnCargarPremix">Cargar Premix</button>

          </div>

        </div>

      </form>

    </div>

    <div class="span4" style="height: 300px;max-height: 300px;overflow-y: scroll;">

      <table class="table table-hover">

        <thead>

          <th>Premix</th>

          <th></th>

          <th></th>

        </thead>

        <tbody>

          <?php

          $sqlFormulas = "SELECT * FROM premix ORDER BY nombre ASC";

          $queryFormulas = mysqli_query($conexion,$sqlFormulas);
          
          while($fila = mysqli_fetch_array($queryFormulas)){ ?>

              <td><?php echo $fila['nombre']?></td>

              <td>
              
                <a href="#" data-toggle="modal" data-target="#premix<?php echo $fila['id'];?>">
              
                  <span class="icon-eye"></span>
              
                </a>
              
              </td>

              <td style="padding-right: 50px;">
              
                <a href="raciones.php?accion=eliminarPremix&id=<?php echo $fila['id'];?>&nombre=<?php echo $fila['nombre'];?>" onclick="return confirm('¿Eliminar Registro?');">
                
                  <span class="icon-cross"></span>
                  
                </a>
              
              </td>

            </tr>
                      
            <div class="modal fade" style="width: 600px;margin-left:-300px;height:450px;z-index:99!important;background-color:transparent;" id="premix<?php echo $fila['id'];?>" tabindex="-1" role="dialog" aria-labelledby="modal" aria-hidden="true">

                <div class="modal-dialog" style="width:auto;" role="document">

                  <div class="modal-content">

                    <div class="modal-header">

                      <h2 class="modal-title" id="modalFormula">Premix <?php echo $fila['nombre'];?></h2>

                      <button type="button" class="close" data-dismiss="modal" aria-label="Close"></button>

                    </div>

                    <div class="modal-body">

                      <div class="row-fluid">

                        <div class="span3">

                          <b>Insumo</b>

                        </div>

                        <div class="span2">

                          <b>Kilos</b>

                        </div>

                        <div class="span2">

                          <b>$/Kg</b>

                        </div>

                        <div class="span2">

                          <b>$/T</b>

                        </div>
                        
                        <div class="span3">

                          <b>%</b>

                        </div>

                      </div>

                      <?php

                      $nombrePremix = $fila['nombre'];

                      $sql = "SELECT * FROM insumos INNER JOIN premix ON insumos.insumo = premix.nombre WHERE insumos.insumo = '$nombrePremix'";
                      
                      $query = mysqli_query($conexion,$sql);

                      while($resultado = mysqli_fetch_array($query)){


                      }

                      
                      ?>
                    
                    </div>

                  </div>

                </div>

            </div>

            <?php
          }
          ?>
        </tbody>

      </table>

    </div> 

</div>
 
 <script>
 $(document).ready(function(){


});
 </script>