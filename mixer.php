<hr>
<div class="row-fluid">
      <div class="span12">
        <table class="table table-striped">
          <thead>
            <th>Op. N°</th>
            <th>Fecha</th>
            <th>Turno</th>
            <th>Operario</th>
            <th>Formula</th>
            <th>Corral</th>
            <th></th>
          </thead>
          <tbody>
            <?php
            $sqlMixer = "SELECT * FROM raciones WHERE feedlot = '$feedlot' ORDER BY fecha DESC";
            $queryMixer = mysqli_query($conexion, $sqlMixer);
            $opNumMixer = 1;

            while ($resultadoMixer = mysqli_fetch_array($queryMixer)) {
            $formulaMixer = $resultadoMixer['formula'];
            $redondeosMixer = $resultadoMixer['redondeo'];
            $redondeosMixer = explode(",", $redondeosMixer);
              ?>
              <tr>
                <td><?php echo $opNumMixer; ?></td>
                <td><?php echo formatearFecha($resultadoMixer['fecha']);?></td>
                <td><?php echo $resultadoMixer['turno'];?></td>
                <td><?php echo $resultadoMixer['operario'];?></td>
                <td style="color:#00C513"><?php echo nombreFormula($formulaMixer,$conexion);?></td>
                <td><?php echo $resultadoMixer['corral'];?></td>
                <td><a class="btn <?php 
                if(!$resultadoMixer['redondeo']){
                  echo "btn-info";
                }else{
                  echo "btn-success";
                }?>" href="#openModal<?php echo $resultadoMixer['id'];?>" onclick="modalFormula('<?php echo $resultadoMixer['id'];?>')">
                  <?php
                    if ($resultadoMixer['redondeo'] == '') {
                      echo "Cargar Mixer";
                    }else{
                      echo "Modificar Mixer";
                    }
                  ?></a></td>
              </tr>

              <div id="openModal<?php echo $resultadoMixer['id'];?>" class="modalDialog">
                <div class="modal-content">
                  <div class="modal-body">
                    <h3 id="exampleModalLabel" style="margin-top: 5px;">Formula <?php echo nombreFormula($resultadoMixer['formula'],$conexion);?></h3>
                      <a href="#close" class="btn close" title="Close">X</a>
                    <form method="POST" action="raciones.php?accion=cargarRedondeo&id=<?php echo $resultadoMixer['id']?>">
                      <?php 
                        $sqlInsumos = "SELECT * FROM raciones INNER JOIN formulas ON raciones.formula = formulas.id WHERE formulas.id = '$formulaMixer'";
                        $queryInsumos = mysqli_query($conexion,$sqlInsumos);
                        $filaInsumos = mysqli_fetch_array($queryInsumos);
                      ?>
                      <div class="row-fluid">
                        <div class="span12">
                          <b>Composici&oacute;n de la dieta en base a <?php echo $resultadoMixer['kilos'];?> Kilos  -  Margen de Error: <input type="number" step="0.01" name="margenError" class="input-mini" value="<?php echo $resultadoMixer['margen'];?>" /> %</b>    
                        </div>
                      </div>
                      <div class="row-fluid" style="border-bottom: 2px solid #7D7D7D">
                        <div class="span2"><b>Producto</b></div>
                        <div class="span1" style="line-height: 1em;"><b>% en la Dieta</b></div>
                        <div class="span1"><b>% TC</b></div>
                        <div class="span1"><b>Kilos</b></div>
                        <div class="span1"><b>Kg Real</b></div>
                        <div class="span1" style="line-height: 1em;"><b>Dieta Final</b></div>
                        <div class="span1"><b>Dif. Kg</b></div>
                        <div class="span1"><b>Dif. %</b></div>
                        <div class="span1" style="line-height: 1em;"><b>% MS Insumo</b></div>
                        <div class="span1"><b>Kg MS</b></div>
                        <div class="span1" style="line-height: 1em;"><b>% MS en Dieta</b></div>
                      </div>
                        <div class="row-fluid" style="border-bottom: 1px solid #7D7D7D">
                          <div class="span2"><?php echo nombreInsumo('p1',$filaInsumos['p1'],$conexion);?></div>
                          <div class="span1 cantPorc<?php echo $resultadoMixer['id'];?>"><?php echo $filaInsumos['por1']." %";?></div>
                          <div class="span1 porceTC<?php echo $resultadoMixer['id'];?>"><?php echo number_format(porceTC($filaInsumos['agua'],$filaInsumos['por1']),2);?> %</div> 
                          <div class="span1 cantKilos<?php echo $resultadoMixer['id'];?>"><?php echo round(($filaInsumos['por1']*$filaInsumos['kilos'])/100,2);?></div>

                          <!-- REDONDEO -->
                          <?php
                          if ($resultadoMixer['redondeo'] == "") {
                          ?>
                          <div class="span1"><input type="number" step="0.01" class="input-mini" style="margin-bottom: 0" name="redondeo1"></div>
                          <div class="span1"></div>
                          <div class="span1"></div>
                          <div class="span1"></div>
                          <div class="span1"></div>
                          <?php
                          }else{ 
                          ?>
                          <div class="span1"><input type="number" step="0.01" class="input-mini" style="margin-bottom: 0" name="redondeo1" value="<?php echo $redondeosMixer[0]?>"></div> 
                          
                          <div class="span1  dietaFinal<?php echo $resultadoMixer['id'];?>"><?php echo $redondeosMixer[0];?></div>
                         
                          <div class="span1"><?php echo $redondeosMixer[0] - (round(($filaInsumos['por1']*$filaInsumos['kilos'])/100,2))." Kg";?></div>
                          
                          <div class="span1"><span class="difPorce<?php echo $resultadoMixer['id'];?>"><?php echo round((($redondeosMixer[0] * 100) / (($filaInsumos['por1']*$filaInsumos['kilos'])/100)-100),2); ?></span> %</div>
                         
                          <div class="span1"><span class="MS"><?php echo tomaPorcentajeMS('p1',$filaInsumos['p1'],$conexion)?></span> %</div>
                          
                          <div class="span1 kilosMS<?php echo $resultadoMixer['id'];?>"><?php 
                          echo round(((tomaPorcentajeMS('p1',$filaInsumos['p1'],$conexion) * $redondeosMixer[0]) / 100),2);
                          ?> Kg</div>
                         
                          <div class="span1" id="totalPorcMS<?php echo $resultadoMixer['id'];?>_1"></div>
                          <?php
                          }
                          ?>
                        </div>

                        <?php 
                        for ($i=1; $i < 11 ; $i++) { 
                          $producto = "p".($i+1);
                          $porcentaje = "por".($i+1);
                          $redondeo = "redondeo".($i+1);
                          if($filaInsumos[$producto] != ''){ ?>
                          <div class="row-fluid" style="border-bottom: 1px solid #7D7D7D">
                          <div class="span2"><?php echo nombreInsumo($producto,$filaInsumos[$producto],$conexion);?></div>
                          <div class="span1 cantPorc<?php echo $resultadoMixer['id'];?>"><?php echo $filaInsumos[$porcentaje]." %";?></div>
                          <div class="span1 porceTC<?php echo $resultadoMixer['id'];?>"><?php echo number_format(porceTC($filaInsumos['agua'],$filaInsumos[$porcentaje]),2);?> %</div>
                          <div class="span1 cantKilos<?php echo $resultadoMixer['id'];?>"><?php echo round(($filaInsumos[$porcentaje]*$filaInsumos['kilos'])/100,2);?></div>
                          <!-- REDONDEO -->
                          <?php
                          if ($resultadoMixer['redondeo'] == "") {
                          ?>
                          <div class="span1"><input type="number" step="0.01" class="input-mini" style="margin-bottom: 0" name="<?php echo $redondeo;?>"></div>
                          <div class="span1"></div>
                          <div class="span1"></div>
                          <div class="span1"></div>
                          <div class="span1"></div>
                          <?php
                          }else{ 
                          ?>
                          <div class="span1"><input type="number" step="0.01" class="input-mini" style="margin-bottom: 0" name="<?php echo $redondeo;?>" value="<?php echo $redondeosMixer[$i]?>"></div> 
                          <div class="span1 dietaFinal<?php echo $resultadoMixer['id'];?>"><?php echo $redondeosMixer[$i];?></div>
                          <div class="span1"><?php echo $redondeosMixer[$i] - (round(($filaInsumos[$porcentaje]*$filaInsumos['kilos'])/100,2))." Kg";?></div>
                          <div class="span1"><span class="difPorce<?php echo $resultadoMixer['id'];?>"><?php echo round((($redondeosMixer[$i] * 100) / (($filaInsumos[$porcentaje]*$filaInsumos['kilos'])/100)-100),2); ?></span> %</div>
                          <div class="span1"><span class="MS"><?php echo tomaPorcentajeMS($producto,$filaInsumos[$producto],$conexion)?></span> %</div>
                          <div class="span1 kilosMS<?php echo $resultadoMixer['id'];?>">
                            <?php
                            echo round(((tomaPorcentajeMS($producto,$filaInsumos[$producto],$conexion) * $redondeosMixer[$i]) / 100),2);
                            ?>
                           Kg</div>
                          <div class="span1" id="totalPorcMS<?php echo $resultadoMixer['id']."_".($i+1);?>"></div>
                          <?php
                          }
                          ?>
                        </div>
                        <?php  }
                        }
                        ?>
                        <div class="row-fluid" style="border-bottom: 1px solid #7D7D7D">
                          <div class="span2">Agua</div>
                          <div class="span1 cantPorc<?php echo $resultadoMixer['id'];?>"><?php echo $filaInsumos['agua']." %";?></div>
                          <div class="span1 porceTC<?php echo $resultadoMixer['id'];?>"><?php echo number_format(porceTC($filaInsumos['agua'],$filaInsumos['agua']),2);?> %</div>
                          <div class="span1"><?php echo ($filaInsumos['agua']*$filaInsumos['kilos'])/100;?></div>
                          <!-- REDONDEO -->
                          <?php
                          if ($resultadoMixer['redondeo'] == "") {
                          ?>
                          <div class="span2"><input type="number" step="0.01" class="input-mini" style="margin-bottom: 0" name="redondeoAgua"></div>
                          <div class="span1"></div>
                          <div class="span1"></div>
                          <div class="span1"></div>
                          <?php
                          }else{ 
                          ?>
                          <div class="span1"><input type="number" step="0.01" class="input-mini" style="margin-bottom: 0" name="redondeoAgua" value="<?php echo $resultadoMixer['redondeoAgua']?>"></div> 
                          <div class="span1"><?php echo $resultadoMixer['redondeoAgua'];?></div>
                          <div class="span1"></div>
                          <?php
                          }
                          ?>

                        </div>
                        <div class="row-fluid">
                          <div class="span2"><b>TOTALES</b></div>
                          <div class="span1"><b id="cantPorc<?php echo $resultadoMixer['id'];?>"></b></div>
                          <div class="span1"><b id="porceTCtotal<?php echo $resultadoMixer['id'];?>"></b></div>
                          <div class="span1"><b id="cantKilos<?php echo $resultadoMixer['id'];?>"></b></div>
                          <div class="span1"></div>
                          <div class="span1"><b id="dietaFinal<?php echo $resultadoMixer['id'];?>"></b></div>
                          <div class="span1"></div>
                          <div class="span1"></div>
                          <div class="span1"></div>
                          <div class="span1"><b id="kilosMS<?php echo $resultadoMixer['id'];?>"></b></div>
                          <div class="span1"><b id="totalMSporc<?php echo $resultadoMixer['id'];?>"></b></div>
                        </div>
                        <button type="submit" class="btn btn-primary" style="float: right;margin-top: 10px;">Cargar</button>
                        <?php
                          if ($resultadoMixer['redondeo'] != '') { ?>
                            <a href="" class="btn btn-primary" style="float: right;margin-top: 10px;margin-right: 5px;" onclick="imprimirMixer('<?php echo $resultadoMixer['id'];?>')">Imprimir</a>
                        <?php   
                          }
                        ?>
                <br><br>
                    </form>
                  </div>
                </div>
              </div>
              <?php
              $opNumMixer ++;
            }
            ?>
          </tbody>
        </table>
      </div>
    </div>
