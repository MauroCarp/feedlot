function verModalMixer(id){

    zindexModal(id);

    var margenError = $("input[name='margenError']").val();

    var margenErrorNegativo = '-' + margenError;

    $('.difPorce' + id).each(function(){
        
        var difPorce = parseFloat($(this).text());


        if(difPorce < margenError && difPorce > margenErrorNegativo){

            $(this).css('color','green');
            
        }else{

            $(this).css('color','red');

        }

    });

    var porceMS = [];

    $('.MS' + id).each(function(){

        porceMS.push(parseFloat($(this).html()));

    }); 


    // PORCENTAJE DIETA
    
    var totalPorce = 0;

    $('.cantPorc' + id).each(function(){

        var porce = parseFloat($(this).html().replace(' ',''));
        
        totalPorce += porce;

    });

    $('#totalCantPorc' + id).html(totalPorce + ' %');


    // PORCENTAJE MS INSUMO

    var porceMSInsumo = [];

    var totalPorceMSInsumo = 0;

    $('.porceMS' + id).each(function(){

        var porceMSInsumoVal = parseFloat($(this).html().replace(' ',''));
        
        porceMSInsumo.push(porceMSInsumoVal);

        totalPorceMSInsumo += porceMSInsumoVal;
        
    }); 

    $('#porceMStotal' + id).html(totalPorceMSInsumo + ' %');


    // KILOS ASIGNADOS 

    var totalKilos = 0;

    $('.cantKilos' + id).each(function(){

        var kilos = parseFloat($(this).html().replace(' ',''));
        
        totalKilos += kilos;

    });

    $('#totalCantKilos' + id).html(totalKilos + ' Kg');


    // DIETA FINAL

    var totalDietaFinal = 0;

    $('.dietaFinal' + id).each(function(){

        var kilos = parseFloat($(this).html().replace(' ',''));
        
        totalDietaFinal += kilos;

    });

    $('#dietaFinal' + id).html(totalDietaFinal + ' Kg'); 


    // KG MS

    var totalKgMs = 0;

    $('.kilosMS' + id).each(function(){

        var kilos = parseFloat($(this).html().replace(' ',''));
        
        totalKgMs += kilos;

    });

    $('#kilosMS' + id).html(totalKgMs + ' Kg'); 



    // % MS DIETA

    var totalPorceMSDieta = 0;

    for (let index = 0; index < porceMS.length; index++) {
        
        var porceMSDieta = ((porceMS[index] * porceMSInsumo[index]) / 100);

        $('#totalPorcMS1_' + (index + 1)).html(porceMSDieta.toFixed(2) + ' %');

        totalPorceMSDieta += porceMSDieta;
        
    }

    $('#totalMSporc' + id).html(totalPorceMSDieta.toFixed(2) + ' %');

}

function imprimirMixer(idRacion){
    
    id = idRacion;
    
    totalMS = parseFloat($('#kilosMS' + id).text());
    
    window.open('imprimir/mixer.php?id=' + id + '&totalMS=' + totalMS);
  
}
