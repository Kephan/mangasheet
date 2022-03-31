window.onload = get_colecciones();

function get_colecciones()
{
    $.ajax({
        method: "POST",
        url: "./sql/get_admin_col.php",
    })
    .done(function(data) {        
        $('#collection').html(data);
        get_editoriales();
        get_demografias();
    });   
}

function get_editoriales()
{
    $.ajax({
        method: "POST",
        url: "./sql/get_editoriales.php",
    })
    .done(function(data) {

        $('.editorial').each((index, item) => {            
            $(item).html(data.replace(`<option value="${$(item).attr('data-ed')}"`, `<option value="${$(item).attr('data-ed')}" selected`));
        });

    });   
}

function get_demografias()
{
    $.ajax({
        method: "POST",
        url: "./sql/get_demografias.php",
    })
    .done(function(data) {

        $('.demografia').each((index, item) => {            
            $(item).html(data.replace(`<option value="${$(item).attr('data-demo')}"`, `<option value="${$(item).attr('data-demo')}" selected`));
        });

    });   
}

$('body').on('click', '#down-arrow', function() {

    let colid = $(this).attr('colid');

    if($('#item-list-container'+colid).attr('active') == "0" || !$('#item-list-container'+colid).attr('active')){        
        if(!$('#item-list-container'+colid).attr('active')){
            $.ajax({
                method: "POST",
                url: "./sql/get_admin_item.php",
                data: {colID: colid}
            })
            .done(function(data) {
                if(data != ""){
                    $('#item-list-container'+colid).html(data);            
                }else{
                    $('#item-list-container'+colid).html('<div class="error">Esta colección está vacía.</div>');            
                }
                
            });   
        }        
        $('#item-list-container'+colid).attr('active', "1");
        $(this).html('<i class="fas fa-chevron-up"></i>');
    }else{
        $('#item-list-container'+colid).attr('active', "0");
        $(this).html('<i class="fas fa-chevron-down"></i>');
    }   

});

$('body').on('click', '.edit-col', function() {

    let colID = $(this).attr('data-col');
    $('#edit'+colID).attr('style', 'display: table-row;');
    $('#show'+colID).attr('style', 'display: none;');

});

$('body').on('click', '.save-col', function() {

    let colID = $(this).attr('data-col');
    $('#form'+colID).submit();

});

$('body').on('click', '.edit-item', function() {

    let colID = $(this).attr('data-col');
    $('#item-edit'+colID).attr('style', 'display: table-row;');
    $('#item-show'+colID).attr('style', 'display: none;');

});

$('body').on('click', '.save-item', function() {

    let colID = $(this).attr('data-col');
    $('#edit-form'+colID).submit();

});

$('body').on('click', '.delete', function() {

    let colID = $(this).attr('data-col');
    let delWaring = prompt('Escribe "BORRAR" para borrarlo.')
    if(delWaring == "BORRAR" || delWaring == "borrar"){
        $('#del'+colID).submit();
    }    

});

$('body').on('click', '.delete-item', function() {
    
    let colID = $(this).attr('data-col');
    let delWaring = prompt('Escribe "BORRAR" para borrarlo.')
    if(delWaring == "BORRAR" || delWaring == "borrar"){
        console.log('has');
        $('#item-del'+colID).submit();
    }    

});

$('body').on('click', '.back', function() {

    let colID = $(this).attr('data-col');
    $('#edit'+colID).attr('style', 'display: none;');
    $('#show'+colID).attr('style', 'display: table-row;');

});

$('body').on('click', '.back-item', function() {

    let colID = $(this).attr('data-col');
    $('#item-edit'+colID).attr('style', 'display: none;');
    $('#item-show'+colID).attr('style', 'display: table-row;');

});

$('body').on('click', '.add-col-btn', function() {

    $('#hidden-btn').trigger('click');

});

$('body').on('click', '.not-link', function(event) {

    event.preventDefault();

});

$('body').on('click', '.add-col', function() {

    if($('.add-temp').length == 0){
        $('#collection').prepend(`
        <ul class="col-list-container add-temp">
            <li class="collection-main">
                <div class="row">
                    <table class="col-table">
                        <thead>
                            <tr>
                                <th>Título</th>
                                <th>Título JP</th>
                                <th>Editorial</th>
                                <th>Vol JP</th>
                                <th>Vol</th>
                                <th>Autor</th>
                                <th>Artista</th>
                                <th>Sinopsis</th>
                                <th>Idioma</th>
                                <th>Demografía</th>
                                <th>Acciones</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr id="edit-add" class="add">
                                <form id="form-add" action="./sql/post.php" method="POST">                                   
                                    <td><input form="form-add" type="text" name="titulo"></td>
                                    <td><input form="form-add" type="text" name="titulo_og"></td>
                                    <td><select form="form-add" class="editorial" name="editorial"></select></td>
                                    <td><input form="form-add" type="number" name="vol_jap"></td>
                                    <td><input form="form-add" type="number" name="vol_es"></td>
                                    <td><input form="form-add" type="text" name="autor"></td>
                                    <td><input form="form-add" type="text" name="artista"></td>
                                    <td><input form="form-add" type="text" name="sinopsis"></td>
                                    <td>
                                        <select form="form-add" id="idioma" name="idioma">
                                            <option value="Español">Español</option>
                                            <option value="Inglés">Inglés</option>
                                        </select>
                                    </td>
                                    <td><select form="form-add" class="demografia" id="demografia" name="demografia"></select></td>
                                    <td>
                                        <div class="admin-buttons">
                                            <ul class="row">                                            
                                                <li><a href="#" class="save-col add-col-btn"><i class="fas fa-save"></i></a></li>    
                                                <button form="form-add" name="coleccion" id="hidden-btn" type="submit"></button>                                        
                                            </ul>
                                        </div>
                                    </td>
                                </form>
                            </tr>
                        </tbody>                     
                    </div>
                </li>               
            </ul>
        `);    
    
        get_editoriales();
        get_demografias();
        $(this).text('-');
    }else{
        $('.add-temp').remove();
        $(this).text('+');
    }

});
