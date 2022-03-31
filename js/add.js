window.onload = get_editoriales();
window.onload = get_colecciones(0);
window.onload = get_demografias();

function get_editoriales()
{
    $.ajax({
        method: "POST",
        url: "./sql/get_editoriales.php",
    })
    .done(function(data) {
        $('#editorial').html(data);
    });   
}

function get_demografias()
{
    $.ajax({
        method: "POST",
        url: "./sql/get_demografias.php",
    })
    .done(function(data) {
        $('#demografia').html(data);
    });   
}

function get_colecciones(id, coleccion)
{
    $.ajax({
        method: "POST",
        url: "./sql/get_colecciones.php",
    })
    .done(function(data) {
        $('#coleccion'+id).html(data);
        if(coleccion != null){
            $('#coleccion'+id).val(coleccion);
        }        
    });   
}

let items = 1;

function add_item()
{
    let coleccion = $('#coleccion0').val();
    let vol = $('#vol'+(items-1)).val();
    let precio = $('#precio0').val();
    let paginas = $('#paginas0').val();
    let tipo = $('#esnovela0').val();

    $('#add-item').append($('#send0').get(0).outerHTML.replace('send0', 'send'+items).replace('vol0"', 'vol'+items+'" value="'+(parseInt(vol)+1)+'"').replace('precio0"', 'precio0" value="'+precio+'"').replace('paginas0"', 'paginas0" value="'+paginas+'"').replace('esnovela0', 'esnovela'+items).replace('coleccion0', 'coleccion'+items));    
    get_colecciones(items, coleccion);
    $('#esnovela'+items).val(tipo);

    items++;    
}

function remove_item()
{
    if(items != 1){
        $('#send'+(items-1)).remove();        
        items--; 
    }    
}

function add_all()
{       
    for(let i = 0; i < items; i++){    
        $.ajax({
            method: "POST",
            url: "./sql/mass_add.php",
            data: new FormData(document.getElementById('send'+i)),
            processData: false,  
            contentType: false 
        })
        .done(function(data) {
            $('#add-item').append(
            `
            <div class="error">
                ${data}                
            </div>
            `);
            setTimeout(function(){ $('.error').remove(); }, 3000);   
        });   
    }
    items = 1;
    
    $('#add-item').html($('#send0').get(0).outerHTML);
}

$('body').on('click', '.add-item', function(event) {

    event.preventDefault();

});