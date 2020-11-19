<hr style='padding:5px,5px;margin-top:5px;'>
<div class="row-fluid">
  <div class="12">
    <form method="POST" class="form-horizontal" action="ingresoMixer1.php" enctype="multipart/form-data">          
      <div class="row-fluid">

        <div class="span3">

          <label for="file-uploadIng" class="btn btn-primary">

              <i class="fas fa-cloud-upload-alt"></i> Seleccionar archivo

          </label>

          <input id="file-uploadIng" onchange="cambiar('file-uploadIng','infoIng')" type="file" name="ingresoMixer" style='display: none;' required/>

          <div id="infoIng" style="text-align: left;font-weight: bold;">No se eligi&oacute; archivo.</div>
        </div>
        

        <div class="span4">

          <label for="selectMixer"><b>Seleccionar Mixer</b></label>

          <select name="mixer" id='selectMixer'>

            <option value="mixer1">456ST</option>

            <option value="mixer2">Mixer 2</option>

          </select>
          
        </div>

        <div class="span4" id="mixer2cantidad" style="display:none">

          <label for="cantidad"><b>Cantidad de Animales</b></label>

          <input type="number" id="cantidad" name="cantidad" maxlength="4" size="4">

        </div>
        

      </div>
    <br>
      <div class="row-fluid">

        <div class="span12">

          <button type="submit" name="submit" class="btn btn-large btn-block btn-primary" accept=".xls,.xlsx">Cargar Registro</button>

        </div>

      </div>

    </form>
  </div>
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
            <th></th>
          </thead>
          <tbody>
            <?php
            $sqlRegistro = "SELECT * FROM raciones WHERE feedlot = '$feedlot' ORDER BY fecha DESC";
            $queryRegistro = mysqli_query($conexion, $sqlRegistro);
            $opNum = 1;

            while ($resultadoRegistro = mysqli_fetch_array($queryRegistro)) {
              $id = $resultadoRegistro['formula'];
              $redondeos = $resultadoRegistro['redondeo'];
              $redondeos = explode(",", $redondeos);
              ?>
              <tr>
                <td><?php echo $opNum; ?></td>
                <td><?php echo formatearFecha($resultadoRegistro['fecha']);?></td>
                <td><?php echo $resultadoRegistro['turno'];?></td>
                <td><?php echo $resultadoRegistro['operario'];?></td>
                <td style="color:#00C513"><?php echo nombreFormula($id,$conexion);?></td>
                <td><?php echo $resultadoRegistro['corral'];?></td>
                <td><span class="icon-pencil iconos" style="cursor:pointer;" data-toggle="modal" data-target="#modificarIngreso<?php echo $resultadoRegistro['id'];?>" onclick="zindexModal('<?php echo $resultadoRegistro['id'];?>')"></span></td>
                <td><a href="raciones.php?accion=eliminar&id=<?php echo $resultadoRegistro['id']?>"  onclick="return confirm('¿Eliminar Registro?');"><span class="icon-bin2 iconos"></span></a></td>
              </tr>

              <div class="modal fade modalFormula zindex-<?php echo $resultadoRegistro['id'];?>" style="width: 600px;margin-left: -300px;" id="modificarIngreso<?php echo $resultadoRegistro['id'];?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"    aria-hidden="true">
                <div class="modal-dialog" role="document">
                  <div class="modal-content">
                    <div class="modal-header">
                      <h2 class="modal-title" id="exampleModalLabel">Modificar Racion</h2>
                      <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      </button>
                    </div>
                    <form style="padding-left: 0;" method="POST" action="raciones.php?accion=modificarIngreso&id=<?php echo $resultadoRegistro['id']?>">
                      <div class="modal-body">
                        <div class="cuerpo-modal" style="width: 100%;text-align: left;">
                          <div class="row-fluid">
                            <div class="span2">
                              <b>Fecha:</b>
                            </div>
                            <div class="span4">
                              <input type="date" class="input-medium" name="fechaIngreso" value="<?php echo $resultadoRegistro['fecha'];?>" autofocus>
                            </div>
                            <div class="span2">
                              <b>Turno:</b>
                            </div>
                            <div class="span1">
                                <select name="turno" class="input-medium">
                                  <option value="Ma&ntilde;ana">Ma&ntilde;ana</option>
                                  <option value="Tarde">Tarde</option>
                                </select>
                            </div>
                          </div>
                          <div class="row-fluid">
                            <div class="span2">
                              <b>Operario:</b>
                            </div>
                            <div class="span4">
                              <select id="inputOperarioModal" class="input-medium" name="operario">
                                <option value="<?php echo $resultadoRegistro['operario'];?>"><?php echo $resultadoRegistro['operario'];?></option>
                                <?php
                                $sqlOperarios = "SELECT nombre FROM operarios WHERE feedlot = '$feedlot' ORDER BY nombre ASC";
                                $queryOperarios = mysqli_query($conexion,$sqlOperarios);
                                while ($operarios = mysqli_fetch_array($queryOperarios)) { ?>

                                    <option value="<?php echo $operarios['nombre'];?>"><?php echo $operarios['nombre'];?></option>
                                
                                <?php
                                
                              }  
                              
                              ?>
                              <option value="otro">Otro</option>
                            </select>
                            <input type="text" class="form-control input-medium otroOperario" id="mostrarOperarioModal" name="operarioOtro" value="">
                            </div>
                            <div class="span2">
                              <b>Corral:</b>
                            </div>
                            <div class="span3">
                              <input type="text" class="input-medium" id="inputCorral" name="corral" value="<?php echo $resultadoRegistro['corral'];?>">
                            </div>
                          </div>
                          <div class="row-fluid">
                            <div class="span2">
                              <b>Formula:</b>
                            </div>
                            <div class="span4">
                              <input type="text" class="input-medium" id="inputFormula" name="formula" value="<?php echo nombreFormula($resultadoRegistro['formula'],$conexion);?>" readonly> 
                            </div>
                             <div class="span2">
                              <b>Kilos:</b>
                            </div>
                            <div class="span4">
                              <input type="number" step="0.01" class="input-medium" id="inputFormula" name="kilos" value="<?php echo $resultadoRegistro['kilos'];?>">
                            </div>
                          </div>
                        </div> 
                      </div>
                      <div class="modal-footer">
                        <button type="submit" class="btn btn-primary">Modificar</button>
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                      </div>
                    </form>
                  </div>
                </div>
              </div>
              <?php
              $opNum ++;
            }
            ?>
          </tbody>
        </table>
      </div>
  </div>
</div>