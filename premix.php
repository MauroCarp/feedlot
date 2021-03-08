
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

    <!-- <div class="span4" style="height: 300px;max-height: 300px;overflow-y: scroll;">

      <table class="table table-hover">

        <thead>

          <th>Formulas</th>

          <th></th>

          <th></th>

        </thead>

        <tbody>

          <?php

          $sqlFormulas = "SELECT * FROM formulas ORDER BY tipo ASC, nombre ASC";

          $queryFormulas = mysqli_query($conexion,$sqlFormulas);

          $tipo = '';

          while($fila = mysqli_fetch_array($queryFormulas)){ 

            if($fila['tipo'] != $tipo){ ?>

            <tr>

              <td><b><?php echo $fila['tipo']?></b></td>

              <td></td>

              <td></td>

              <td></td>

            </tr>

            <?php

            }?>

            <tr>

              <td><?php echo $fila['nombre']?></td>

              <td>
              
                <a href="#" data-toggle="modal" data-target="#formula<?php echo $fila['id'];?>" onclick="cargarMS(<?php echo $fila['id'];?>)">
              
                  <span class="icon-eye"></span>
              
                </a>
              
              </td>

              <td style="padding-right: 50px;">
              
                <a href="raciones.php?accion=eliminarFormula&id=<?php echo $fila['id'];?>" onclick="return confirm('¿Eliminar Registro?');">
                
                  <span class="icon-cross"></span>
                  
                </a>
              
              </td>

            </tr>
            
            <div class="modal fade zindex-<?php echo $fila['id'];?>" style="width: 1000px;height:500px;margin: 0 auto;margin-left:-500px;z-index:99!important;" id="formula<?php echo $fila['id'];?>" tabindex="-1" role="dialog" aria-labelledby="modalFormula" aria-hidden="true">

                <div class="modal-dialog" style="width:auto;" role="document">

                  <div class="modal-content">

                    <div class="modal-header">

                      <h2 class="modal-title" id="modalFormula">Formula <?php echo $fila['tipo']." - ".$fila['nombre'];?></h2>

                      <button type="button" class="close" data-dismiss="modal" aria-label="Close"></button>

                    </div>

                    <div class="modal-body">

                      <div id="dieta">

                        <div class="row-fluid">

                          <div class="span12">

                            <b>
                            Composici&oacute;n de la dieta | Precio por Kilo: $
                            
                            <span id="precioKilo<?php echo $fila['id'];?>">

                            </span> 
                            
                            | Precio por Kilo MS: $ 
                            
                            <span id="precioMS<?php echo $fila['id'];?>"> 
                              
                              <?php echo formatearNum($fila['precio']);?>
                            
                            </span> 
                            
                            | Total % de MS: 
                            
                            <span id="totalPorMS<?php echo $fila['id'];?>"></span>
                             
                             %</b>
                             
                             <br>

                            <b>Fecha Realizada: <?php echo formatearFecha($fila['fecha']);?></b>  

                          </div>

                        </div>

                        <div class="row-fluid" style="border-bottom: 2px solid #7D7D7D">
                          <div class="span2"><b>Producto</b></div>

                          <div class="span2"><b>% en la Dieta</b></div>

                          <div class="span2"><b>% MS</b></div>

                          <div class="span1" style="line-height:1em;"><b>Precio Insumo</b></div>

                          <div class="span1" style="line-height:1em;"><b>$/Kg MS</b></div>

                          <div class="span2"><b>% MS Insumo</b></div>
                          
                          <div class="span2"><b>% MS en la Dieta</b></div>
                        
                        </div>
                        
                        <div class="row-fluid" style="border-bottom: 1px solid #7D7D7D">

                          <div class="span2">
                          
                            <?php echo utf8_encode(nombreInsumo('p1',$fila['p1'],$conexion));?>
                          
                          </div>

                          <div class="span2">
                          
                            <span class="porce<?php echo $fila['id'];?>"><?php echo number_format($fila['por1'],2,",",".");?></span> %
                          
                          </div>

                          <div class="span2" id="porceTC<?php echo $fila['id'];?>">
                          
                            <?php echo number_format(porceMS($fila['p1'],$fila['por1'],$conexion),2,",",".");?> %
                            
                          </div>

                          <div class="span1 preciosInsumos<?php echo $fila['id'];?>">
                          
                            <?php echo "$ ".number_format(precioInsumo('p1',$fila['p1'],$conexion),2,",",".");?>
                            
                          </div>

                          <div class="span1 precioPorc<?php echo $fila['id'];?>">
                          
                            <?php echo "$ ".number_format(
                              precioInsumo('p1',$fila['p1'],$conexion) * (porceMS($fila['p1'],$fila['por1'],$conexion) / 100 ),2,",",".")?>
                            
                          </div>

                          <div class="span2 porcMS<?php echo $fila['id'];?>_0" style="text-align:center;">
                          
                            <?php 

                            $porMS = obtenerMSinsumo($fila['p1'],$conexion);

                            echo $porMS." %";?>
                          
                          </div>

                          <div class="span2 totalMS<?php echo $fila['id'];?>" style="text-align:center;">

                            <?php echo formatearNum(((porceMS($fila['p1'],$fila['por1'],$conexion)*$porMS)/100))." %";?>

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

                              <div class="span2"><span class="porce<?php echo $fila['id'];?>"><?php echo formatearNum($fila[$porcentaje]);?></span> %</div>

                              <div class="span2" id="porceTC<?php echo $fila['id'];?>"><?php echo formatearNum(porceMS($fila[$producto],$fila[$porcentaje],$conexion));?> %</div>

                              <div class="span1 preciosInsumos<?php echo $fila['id'];?>"><?php echo "$ ".number_format(precioInsumo($producto,$fila[$producto],$conexion),2,",",".");?></div>

                              <div class="span1 precioPorc<?php echo $fila['id'];?>"><?php echo "$ ".number_format(((porceMS($fila[$producto],$fila[$porcentaje],$conexion) * precioInsumo($producto,$fila[$producto],$conexion))/100),2,",",".");?></div>

                              <div class="span2 porcMS<?php echo $fila['id']."_".$i;?>" style="text-align:center;"><?php
                              ${"porMS".($i+1)} = obtenerMSinsumo($fila[$producto],$conexion);

                              echo ${"porMS".($i+1)}." %";?></div>

                              <div class="span2 totalMS<?php echo $fila['id'];?>" style="text-align:center;">

                                <?php echo formatearNum(((porceMS($fila[$producto],$fila[$porcentaje],$conexion)*${"porMS".($i+1)})/100))." %";?>

                              </div>
                            </div>
                        <?php  }
                        }
                        ?>

                        <div class="row-fluid">

                          <div class="span5" style="font-size: .6em;">

                            <p>*Valores en base a 1 Kilo de Formula.</p>

                          </div>

                        </div>

                        <a href="raciones.php?seccion=formulas&accion=modificar&id=<?php echo $fila['id'];?>" class="btn btn-secondary">Modificar</a>

                        <a href="compararDietas.php?id=<?php echo $fila['id'];?>" class="btn btn-secondary">Comparar</a>

                        <a href="#" class="btn btn-secondary" onclick="imprimirFormula('<?php echo $fila['id'];?>')">Imprimir</a>

                      </div>

                    </div>

                  </div>

                </div>

            </div>

            <?php
            $tipo = $fila['tipo'];
          }
          ?>
        </tbody>

      </table>

    </div>  -->

</div>
 
 <script>
 $(document).ready(function(){

  // selectIsumosPremix('producto0');

});
 </script>