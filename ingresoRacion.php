<div class="row-fluid">

      <div class="span5" style="padding-right:15px;border-right: solid 1px black">

        <form method="POST" class="form-horizontal" action="ingresoMixer1.php" enctype="multipart/form-data">              
          
          <div class="row-fluid">

            <div class="span6">

              <label for="file-uploadIng" class="btn btn-primary" style="font-size:1em;">

                  <i class="fas fa-cloud-upload-alt"></i> Seleccionar archivo

              </label>

              <input id="file-uploadIng" onchange="cambiar('file-uploadIng','infoIng')" type="file" name="file" style='display: none;' required/>

            </div>
            
            <div class="span6">
            
              <div id="infoIng" style="text-align: left;font-weight: bold;">No se eligi&oacute; archivo.</div>
            
            </div>

          </div> 

          <br>

          <div class="row-fluid">
            
            <div class="span6">

              <label for="selectMixer" style="font-size:1.3em;line-height:1.5em;"><b>Seleccionar Mixer:</b></label>

            </div>
            
            <div class="span6">
            
              <select name="mixer" id='selectMixer'>

                <option value="mixer1">456ST</option>

                <option value="mixer2">Mixer 2</option>

              </select>
            
            </div>
              
          </div>

          <br>

          <div class="row-fluid">
          
            <div class="span3" id="mixer2cantidad" style="display:none">

              <label for="cantidad"><b>Cantidad de Animales</b></label>

              <input type="number" id="cantidad" name="cantidad" maxlength="4" size="4">

            </div>
            
          </div>

          <div class="row-fluid">

            <div class="span12">

              <button type="submit" name="submit" class="btn btn-large btn-block btn-primary" accept=".xls,.xlsx">Cargar Registro</button>

            </div>

          </div>

        </form>

      </div>

      <div class="span6" style="padding-top:0;margin-top:0">
        
        <table class="table table-striped">
          <thead>
          
            <th>Op. N°</th>

            <th>Fecha</th>

            <th></th>
            
          </thead>
          <tbody>

          <?php

            $fechaOperaciones = array();

            $sqlCargas = "SELECT DISTINCT(fecha) as fecha FROM mixer_cargas ORDER BY fecha ASC";
            
            $queryCargas = mysqli_query($conexion,$sqlCargas);
            
            while($cargas = mysqli_fetch_array($queryCargas)){
              
              $fecha = $cargas['fecha'];

              $fechaOperaciones[] = $fecha;

            }

            $sqlDescargas = "SELECT DISTINCT(fecha) as fecha FROM mixer_descargas ORDER BY fecha DESC";
            
            $queryDescargas = mysqli_query($conexion,$sqlDescargas);
            
            while($descargas = mysqli_fetch_array($queryDescargas)){
              
              $fecha = $descargas['fecha'];

              $fechaOperaciones[] = $fecha;

            }

            $fechaOperaciones = array_unique($fechaOperaciones);
            $fechaOperaciones = array_values($fechaOperaciones);

            for ($i=0; $i < sizeof($fechaOperaciones) ; $i++) { 


              echo "
              <tr>

                <td>".($i+1)."</td>
                
                <td>".formatearFecha($fechaOperaciones[$i])."</td>

                <td>

                  <a href='verOperacion.php?fecha=".$fechaOperaciones[$i]."'>
                  
                    <span class='icon-eye iconos' style='cursor:pointer;'></span>
                  
                  </a>
                
                </td>

              </tr>";
            
            }
              
            ?>




          </tbody>
        </table>
      
      </div>

</div>