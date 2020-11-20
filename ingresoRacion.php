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

            <th>Mixer</th>

            <th>Fecha</th>

            <th>Tipo</th>

            <th></th>
            
            <th></th>

          </thead>
          <tbody>

          <?php
            $arrayOperaciones = array();

            $sqlCargas = "SELECT DISTINCT(fecha) as fecha FROM mixer_cargas ORDER BY fecha ASC";
            
            $queryCargas = mysqli_query($conexion,$sqlCargas);
            
            while($cargas = mysqli_fetch_array($queryCargas)){
              
              $fecha = $cargas['fecha'];

              $arrayOperaciones[] = array('fecha'=>($fecha),'tipo'=>('Carga'));

            }

            $sqlDescargas = "SELECT DISTINCT(fecha) as fecha FROM mixer_cargas ORDER BY fecha DESC";
            
            $queryDescargas = mysqli_query($conexion,$sqlDescargas);
            
            while($descargas = mysqli_fetch_array($queryDescargas)){
              
              $fecha = $descargas['fecha'];

              $arrayOperaciones[] = array('fecha'=>($fecha),'tipo'=>('Descarga'));

            }

            foreach ($arrayOperaciones as $key => $row) {
             
              $aux[$key] = $row['fecha'];
            
            }

            array_multisort($aux, SORT_DESC, $arrayOperaciones);
            // var_dump($arrayOperaciones[0]['fecha']);
            for ($i=0; $i < sizeof($arrayOperaciones) ; $i++) { 
              echo "
              <tr>

                <td>".($i+1)."</td>
                
                <td>".formatearFecha($arrayOperaciones[$i]['fecha'])."</td>

                <td>".$arrayOperaciones[$i]['tipo']."</td>

                <td>

                  <a href='verOperacion.php?fecha=".$arrayOperaciones[$i]['fecha']."&tipo=".$arrayOperaciones[$i]['tipo']."'>
                  
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
</div>