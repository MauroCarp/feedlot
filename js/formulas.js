// ELEGIR OTRA FORMULA


$('#selectTipoFormula').change(()=>{

    var seleccion = $('#selectTipoFormula').val();

    if(seleccion == 'otro'){

        $('#mostrarOtro').css('display','block');

    }else{

        $('#mostrarOtro').css('display','none');

    }
});


// CARGAR INSUMOS A SELECT

function selectInsumos(id){
    
    var url = 'ajax/insumos.ajax.php';

    var data = 'accion=select';

    $.ajax({
        type: "POST",
        url: url,

        data: data,

        success: function(resultado){

             $('#' + id).append(resultado);

        }

      });

}

// OBETENER VARIABLES DEL GET CON JS

function getQueryVariable(variable) {

  var query = window.location.search.substring(1);

  var vars = query.split("&");

  for (var i=0; i < vars.length; i++) {

      var pair = vars[i].split("=");

      if(pair[0] == variable) {

          return pair[1];

      }

  }

  return false;

}


//  CARGAR PRECIO DEL PRODUCTO SELECCIONADO

function cargarPrecioProducto(val,id){
  
  var contadorInsumo = id.substring(8,12);

  var modificarValido = getQueryVariable('accion');
  
  var compararValido = getQueryVariable('id');

  var  nuevaDietaValida = (modificarValido == false && compararValido == '') ? true : false;

  if(nuevaDietaValida){

    $('#porcentaje' + contadorInsumo).val(0);
  
    $('#porcentajeMS' + contadorInsumo).val(0);
  
    $('#precioPor' + contadorInsumo).val(0);

  }


  var precio = '#precio' + contadorInsumo;

    $.ajax({

        type: "POST",

        url: 'consulta.php',

        data: 'insumo='+val,

        success: function(resp){

            $(precio).html(resp);

        }

    });

    if (val != "") {
      $('#porcentaje' + contadorInsumo).attr('disabled',false);
    }else{
      $('#porcentaje' + contadorInsumo).attr('disabled',true);
    } 
}

// CALCULAR TOTAL PORCENTAJE AL FORMULAR DIETA

function porcentajeTotalDieta(){
	
	var totalPorcentaje = 0;

	$('.porcentajes').each(function(){

	    totalPorcentaje += parseFloat($(this).val());

	});
    
    return totalPorcentaje;
}

// OBETENER MS DE INSUMO 

function obtenerMS(contador_producto){

    var id_producto = $('#producto' + contador_producto).val();

    var url = 'ajax/insumos.ajax.php';

    var data = 'idProducto=' + id_producto + '&accion=obtenerMS';

    $.ajax({

        type: "POST",
        url: url,
        data: data,
        success: function(resp){

            var porcentajeInsumo = parseFloat($('#porcentaje' + contador_producto).val());

            var porcentajeMS = porcentajeInsumo * (parseFloat(resp) / 100);
        
            $('#porcentajeMS' + contador_producto).val(porcentajeMS);
        }

    });

}


// CARGAR %MS Y PRECIO %MS

function infoMSinsumo(id){

    // SI EL INPUT ESTA VACIO SE PONE EN CERO
    if ($('#' + id).val() == ''){
        $('#' + id).val(0);
      }

    /// SE CALCULA EL PORCENTAJE TOTAL   
    var totalPorcentaje = porcentajeTotalDieta();
    $('#totalPorcentaje').val(totalPorcentaje);

    // CARGAR %MS
    var contador = id.substring(10,12);

    obtenerMS(contador);   


    ///CARGAR PRECIO PORCENTAJE

    var precioTC = parseFloat($('#precio' + contador + ' input[name=precioTC]').val());

    setTimeout(function(){

        var porcenMS = $('#porcentajeMS' + contador).val();
        
        var precioPorcMS = (precioTC * (parseFloat(porcenMS) / 100));
    
        precioPorcMS = precioPorcMS.toFixed(2);
    
        $('#precioPor' + contador).val(precioPorcMS);

    },500);

    // SI EL PORCENTAJE TOTAL SE EXEDE DEL 100% SE AVISA
    if (totalPorcentaje > 100) {
      $('.botonCarga').attr('disabled',true);

      alert("Los porcentajes suman un total mayor a 100%");

    }

    if (totalPorcentaje < 100) {

      $('.botonCarga').attr('disabled',true);

    }

    if (totalPorcentaje === 100) {

      $('.botonCarga').attr('disabled',false);

    }
    
}

// RESETEAR VALORES

function resetear(){

  $(".porcentajes").val(0);

  $('.porcentajesMS').val(0);

  $(".importe_linea").val(0);

  $('#totalPorcentaje').val(0);

}

// AGREGAR PRODUCTO

function generarDivAgregarProd(contador){

  var div = '<div class="row-fluid producto' + contador +'">';

  div += '<div class="span3">';

  div += '<select class="form-control select-insumos input-medium mi-selector" name="producto' + contador +'" id="producto' + contador + '" onchange="cargarPrecioProducto(this.value,this.id);">';

  div += '<option value="">Seleccionar Insumo</option>';

  var id = 'producto' + contador;

  div += selectInsumos(id);

  div += '</select></div>';

  div += '<div class="span2">';

  div += '<input type="text" class="form-control input-small porcentajes" id="porcentaje' + contador + '" name="porcentaje' + contador + '" value="0" onblur="infoMSinsumo(\'porcentaje' + contador + '\')" disabled="true" required/></div>';

  div += '<div class="span2">';

  div += '<input type="text" style="font-weight:bold" class="form-control input-small porcentajesTC" id="porcentajeMS' + contador + '" value="0" readonly/></div>';

  div += '<div class="span2" id="precio' + contador + '"></div>';

  div += '<div class="span2"><input type="text" style="font-weight: bold" value="0" id="precioPor' + contador + '" class="input-small importe_linea" readonly></div>'; 

  div += '<div class="span1"><span class="icon-bin2" style="cursor: pointer;" onclick="eliminarProducto(\'producto' + contador + '\')"></span></div>';

  return div;

} 

var contador = 1;

var modificarValido = getQueryVariable('accion');

var compararValido =  getQueryVariable('id');

if(modificarValido == 'modificar' || compararValido != ''){

  $('.contenedorProductos').each(function(){

    contador++;

  });

}


$('#btnAgregarProducto').click(()=>{

  var div = generarDivAgregarProd(contador);

  $('.contenedor-producto').append(div);

  $('.mi-selector').each(function(){
    
    $(this).select2();

  });

  contador++; 

});




// ELIMINAR INSUMO DE LA DIETA

function eliminarProducto(producto){

  $('.' + producto).remove();

  var totalPorcentaje = porcentajeTotalDieta();

  $('#totalPorcentaje').val(totalPorcentaje); 

}

// CALCULAR PRECIO TOTAL

function calcular_total() {

	importe_total = 0;

	$(".importe_linea").each(function(){

    importe_total = importe_total + parseFloat($(this).val());

	});


  $("#total").val(importe_total.toFixed(2));

}

// Z-INDEX DE MODALES

function zindexModal(id){

  $(".zindex-" + id).css('z-index','9999');

}

// IMPRIMIR FORMULA

function imprimirFormula(id){

  var precioPor = parseFloat($('#precioMS' + id).html().trim().replace(',','.'));

  var totalMS = parseFloat($('#totalPorMS' + id).html().replace(',','.'));  

  window.open('imprimir/formula.php?id=' + id + '&precioPor=' + precioPor + '&totalMS=' + totalMS, '_blank');

}

// CARGAR DATOS MS DE VENTANA MODAL FORMULA

function cargarMS(id){

  var totalPrecioMF = 0;

  var porcentajesMF = [];

  $(".porce" + id).each(function(){

    var porceMF = $(this).text();

    porceMF = $.trim(porceMF);
                
    porceMF = porceMF.replace(',','.');
          
    porceMF = parseFloat(porceMF);
    
    porcentajesMF.push(porceMF);

  });

  var preciosInsumos = [];

  $(".preciosInsumos" + id).each(function(){

    var precioMF = $(this).text();
    
    precioMF = $.trim(precioMF);

    precioMF = precioMF.substring(2,6).replace(',','.');
    
    precioMF = parseFloat(precioMF);
    
    preciosInsumos.push(precioMF);
    
  });
  
  for (let index = 0; index < porcentajesMF.length; index++) {

    totalPrecioMF += (porcentajesMF[index] * preciosInsumos[index]) / 100;
    
  }

  $('#precioKilo' + id).html(totalPrecioMF.toFixed(2));

  var totalPMS = 0; 

  var pMS = 0;

  $(".totalMS" + id).each(function(){

    pMS = $(this).text();

    pMS = $.trim(pMS);

    pMS = parseFloat(pMS.substring(0,5).replace(",","."));

    totalPMS += pMS;

  });
       
  $("#totalPorMS" + id).text(totalPMS.toFixed(2).replace(".",","));

  $(".zindex-" + id).css('z-index','1');

}

