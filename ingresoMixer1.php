<?php
include("includes/init_session.php");
include("includes/conexion.php");
include("includes/funciones.php");
require_once('lib/excel/php-excel-reader/excel_reader2.php');
require_once('lib/excel/SpreadsheetReader.php');

function validateDate($fecha){

	$fecha = explode('/',$fecha);

	$fechaValida = (sizeof($fecha) == 3) ? TRUE : FALSE;
                        
	// $fecha = ($fechaValida) ? $fecha[2].'-'.$fecha[1].'-'.$fecha[0] : '0000-00-00';

	return $fechaValida;

}

// function formatearFecha(){
	
// 	$fecha = explode('/',$fecha);

                        
// 	$fecha = $fecha[2].'-'.$fecha[1].'-'.$fecha[0];

// 	return $fecha;
// }

if( isset($_POST["submit"]) ){

	$error = false;

	$allowedFileType = ['application/vnd.ms-excel','text/xls','text/xlsx','application/vnd.openxmlformats-officedocument.spreadsheetml.sheet'];

	if(in_array($_FILES["file"]["type"],$allowedFileType)){
		$ruta = "carga/" . $_FILES['file']['name'];
		move_uploaded_file($_FILES['file']['tmp_name'], $ruta);

        $archivo = $_FILES['file']['name']; 

		$Reader = new SpreadsheetReader($ruta);	
		$sheetCount = count($Reader->sheets());
		for($i=0;$i<$sheetCount;$i++){
			$Reader->ChangeSheet($i);

			
			if ($i == 0) {

				$primera = true;
								
				foreach ($Reader as $Row){

					if($primera){
						
						$primera = false;
						
						continue;

					}
					$id_receta = "";
					
					if(isset($Row[0])) {
						
						$id_receta = mysqli_real_escape_string($conexion,$Row[0]);
						
					}
					
					$nombre = "";

					if(isset($Row[1])) {
						
						$nombre = mysqli_real_escape_string($conexion,$Row[1]);
						
					}
					
					$tipo = "";
					
					if(isset($Row[2])) {
						
						$tipo = mysqli_real_escape_string($conexion,$Row[2]);
						
					}
					
					$tipoMezcla = "";
					
					if(isset($Row[3])) {
						
						$tipoMezcla = mysqli_real_escape_string($conexion,$Row[3]);
						
					}
					
					$columns = array();
					$values  = array();

					$contador = 1;
					$contadorTemp = 1;
					
					for ($a=4; $a < 30; $a++) { 
						
						$ingrediente = "";
						
						if(isset($Row[$a])){

							if($Row[$a] != '') {
							
								if ($a%2==0){
									
									$ingrediente = mysqli_real_escape_string($conexion,$Row[$a]);
									
									$columns[] = 'ingrediente'.$contadorTemp;
									
									$values[]  = "'".$ingrediente."'";
									
								}else{
									
									$cantidad = mysqli_real_escape_string($conexion,$Row[$a]);
									
									$columns[] = 'cantidad'.$contadorTemp;
									
									$values[]  = "'".$cantidad."'";
									
									$contadorTemp++;
									
								}
							}
							
						}
						
					}
					
					$columns = implode(',',$columns);
					$values = implode(',',$values);
					
					$sql = "INSERT INTO mixer_recetas(id_receta,archivo,nombre,tipo,tiempoMezcla,$columns) VALUES ('$id_receta','$archivo','$nombre','$tipo','$tipoMezcla',$values)";

					mysqli_query($conexion,$sql);					

				}

			}
            
			if ($i == 4) {

				$primera = true;
								
				foreach ($Reader as $Row){

					if($primera){
						
						$primera = false;
						
						continue;

					}

					$id_carga = "";
					
					if(isset($Row[0])) {
						
						$id_carga = mysqli_real_escape_string($conexion,$Row[0]);
						
					}
					
					$fecha = "";

					if(isset($Row[1])) {
                        
                        $fecha = mysqli_real_escape_string($conexion,$Row[1]);

						$fechaValida = validateDate($fecha);

						if($fechaValida){

							$fecha = formatearFecha($fecha);
						
						}else{

							echo "<script>
								alert('Hay una o más fechas con un formato erroneo');
								window.location = 'raciones.php?accion=eliminar&archivo=".$archivo."';
							</script>";
							
						}
						
                    }
					
					$hora = "";
					
					if(isset($Row[2])) {
						
						$hora = mysqli_real_escape_string($conexion,$Row[2]);
						
					}
					
					$id_receta = "";
					
					if(isset($Row[3])) {
						
						$id_receta = mysqli_real_escape_string($conexion,$Row[3]);
						
					}
					
					$ingrediente = "";
					
					if(isset($Row[5])) {
						
						$ingrediente = mysqli_real_escape_string($conexion,$Row[5]);
						
					}
					
					$cantidad = "";
					
					if(isset($Row[6])) {
						
						$cantidad = mysqli_real_escape_string($conexion,$Row[6]);
						
					}
					
					$ideal = "";
					
					if(isset($Row[7])) {
						
						$ideal = mysqli_real_escape_string($conexion,$Row[7]);
						
					}
					
					
					
					$sql = "INSERT INTO mixer_cargas(archivo,mixer,id_carga,fecha,hora,ingrediente,cantidad,ideal,id_receta) VALUES ('$archivo','mixer1','$id_carga','$fecha','$hora','$ingrediente','$cantidad','$ideal','$id_receta')";

                    mysqli_query($conexion,$sql);	
                    
                    // echo mysqli_error($conexion);

				}

			}

			
			if ($i == 5) {

				$primera = true;
								
				foreach ($Reader as $Row){

					if($primera){
						
						$primera = false;
						
						continue;

					}

					$id_descarga = "";
					
					if(isset($Row[0])) {
						
						$id_descarga = mysqli_real_escape_string($conexion,$Row[0]);
						
					}
					
					$fecha = "";

					if(isset($Row[1])) {
						
                        $fecha = mysqli_real_escape_string($conexion,$Row[1]);
                        
						$fechaValida = validateDate($fecha);

						if($fechaValida){

							$fecha = formatearFecha($fecha);
						
						}else{

							echo "<script>
								alert('Hay una o más horas con un formato erroneo o vacío');
							</script>";
							
						}
						
                    }
                    
					
					$hora = "";
					
					if(isset($Row[2])) {
						
						$hora = mysqli_real_escape_string($conexion,$Row[2]);

						$horaValida = preg_match('/([0-9][0-9])(:)([0-9][0-9])/',$hora);
						
						if($horaValida){

							$hora = $hora.':00';

						}else{

							echo "<script>
								alert('Hay una o más horas con un formato erroneo o vacío');
							</script>";

						}
						
					}
			
					$lote = "";
					
					if(isset($Row[5])) {
						
						$lote = mysqli_real_escape_string($conexion,$Row[5]);

						$loteValido = ($lote != '') ? TRUE : FALSE; 

						if(!$loteValido){

							echo "<script>
								alert('Hay una o más horas con un formato erroneo o vacío');
							</script>";

						}
						
					}
					
					$cantidad = "";
					
					if(isset($Row[6])) {
						
						$cantidad = mysqli_real_escape_string($conexion,$Row[6]);

						$cantidad = ($cantidad == '' OR $cantidad == '-') ? 0 : $cantidad;

					}
					
					$animales = "";
					
					if(isset($Row[7])) {
						
						$animales = mysqli_real_escape_string($conexion,$Row[7]);

						$animalesValido = ($animales != '') ? TRUE : FALSE; 

						if(!$animalesValido){

							echo "<script>
								alert('Hay una o más horas con un formato erroneo o vacío');
							</script>";

						}

						
					}
                
                    $operario = "";
					
					if(isset($Row[8])) {
						
						$operario = mysqli_real_escape_string($conexion,$Row[8]);
						
					}
					
					
					
					$sql = "INSERT INTO mixer_descargas(archivo,mixer,id_descarga,id_carga,fecha,hora,lote,cantidad,animales,operario) VALUES ('$archivo','mixer1','$id_descarga','$id_carga','$fecha','$horaFormateada','$lote','$cantidad','$animales','$operario')";

                    mysqli_query($conexion,$sql);	
                    
                    // echo mysqli_error($conexion);

				}

			}
			
		}
	}
}

unlink($ruta);

echo "<script>
	window.location = 'raciones.php';
</script>";

?>
<!-- 
<form name="f1" class="form-horizontal" method="POST" action="ingresoMixer1.php" enctype="multipart/form-data"> 
<input type="submit" class="btn btn-primary btn-lg" name="submit" value="Subir" accept=".xls,.xlsx" />
<input type="file" name="file" required />
</form> -->
