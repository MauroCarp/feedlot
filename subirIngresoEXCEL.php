<?php
include("includes/init_session.php");
include("includes/conexion.php");
include("includes/funciones.php");
require_once('lib/excel/php-excel-reader/excel_reader2.php');
require_once('lib/excel/SpreadsheetReader.php');
die();
if( isset($_POST["submit"]) ){

	$error = false;

	$allowedFileType = ['application/vnd.ms-excel','text/xls','text/xlsx','application/vnd.openxmlformats-officedocument.spreadsheetml.sheet'];

	if(in_array($_FILES["file"]["type"],$allowedFileType)){
		$ruta = "carga/" . $_FILES['file']['name'];
		move_uploaded_file($_FILES['file']['tmp_name'], $ruta);


		$Reader = new SpreadsheetReader($ruta);	
		$sheetCount = count($Reader->sheets());
		$contador = 540;
		for($i=0;$i<$sheetCount;$i++){
			$Reader->ChangeSheet($i);

			$primera = true;
			foreach ($Reader as $Row){
		                
		        // Evitamos la primer linea
				if($primera){
					$primera = false;
					continue;
				}
				// Obtenemos informacion
				$fecha= "";
				if(isset($Row[0])) {
					$fecha= mysqli_real_escape_string($conexion,$Row[0]);
				}
			  	
				$cantidad= "";
				if(isset($Row[1])) {
					$cantidad= mysqli_real_escape_string($conexion,$Row[1]);
				}
				
				$destino= "";
				if(isset($Row[2])) {
					$destino= mysqli_real_escape_string($conexion,$Row[2]);
				}else{
					$destino = "";
				}

				$peso= "";
				if(isset($Row[6])) {
					$peso= mysqli_real_escape_string($conexion,$Row[6]);
				}

				if ($peso == '' OR $peso == '-') {
					$peso = 0;
				}
				if ($peso != 0) {
					$peso = number_format($peso,2);
				}

				$fecha = fechaExcel($fecha);
				//echo $origen." / ".$cantidad." / ".$peso;
				//echo "<br>";
				if ($destino == "") {
					$tropa = "Sin Nombre(".$contador.")";
				}else{
					$tropa = $destino."(".$contador.")";
				}


				// Guardamos en base de datos
				for ($i=0; $i < $cantidad ; $i++) { 
					$sqlInsert = "INSERT INTO egresos(feedlot,tropa,fecha,destino,peso) VALUES ('Acopiadora Pampeana','$tropa','$fecha','$destino','$peso')";
;
					mysqli_query($conexion,$sqlInsert);
					echo mysqli_error($conexion);
				}

			$contador++;
			}
		}
	}
}


?>
<form name="f1" class="form-horizontal" method="POST" action="subirIngresoExcel.php" enctype="multipart/form-data"> 
<input type="submit" class="btn btn-primary btn-lg" name="submit" value="Subir" accept=".xls,.xlsx" />
<input type="file" name="file" required />
</form>
