window.onload = get_editoriales();

function get_editoriales()
{
    $.ajax({
        method: "POST",
        url: "./sql/get_monthly_editoriales.php"        
    })
    .done(function(data) {            
        $('#weekly-product').html(data); 
        get_months();
        get_items();      
    });
}

function get_months()
{
    let months = ['empty', 'Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio', 'Agosto', 'Septiembre', 'Octubre', 'Noviembre', 'Diciembre']
    let d = new Date();
    let month;
    let prevmonth;
    let nextmonth;
    let year;
    let prevyear;
    let nextyear;
    const urlParams = new URLSearchParams(window.location.search);



    if(urlParams.get('mes') != null){
        if(urlParams.get('mes') <= 12 && urlParams.get('mes') >= 1){
            month = urlParams.get('mes');
        }else{
            window.location.href = window.location.href.split('?')[0] + "?mes="+ (d.getMonth() + 1) +"&ano=" + urlParams.get('ano');
        }
    }else{
        month = (d.getMonth() + 1);
    }

    if(urlParams.get('ano') != null){
        if(urlParams.get('ano') >= 1){
            year = urlParams.get('ano');
        }else{
            window.location.href = window.location.href.split('?')[0] + "?mes="+ month +"&ano=" + (d.getFullYear());
        }
        year = urlParams.get('ano');
    }else{
        year = (d.getFullYear());
    }

    if((month - 1) == 0){
        prevmonth = 12;
        prevyear = (year - 1);
    }else{
        prevmonth = (month - 1);
        prevyear = year;
    }

    if((parseInt(month) + 1) == 13){
        nextmonth = 1;
        nextyear = (parseInt(year) + 1);
    }else{
        nextmonth = (parseInt(month) + 1);
        nextyear = year;
    }
    
    $('#prev-month').text(`${months[prevmonth]} de ${prevyear}`).attr(`href`, `?mes=${prevmonth}&ano=${prevyear}`);
    $('#act-month').text(`${months[month]} de ${year}`).attr(`href`, `?mes=${month}&ano=${year}`);
    $('#next-month').text(`${months[nextmonth]} de ${nextyear}`).attr(`href`, `?mes=${nextmonth}&ano=${nextyear}`);

}

function get_items()
{
        $.ajax({
            method: "POST",
            url: "./sql/get_monthly_items.php",
            data: { url: window.location.href }
        })
        .done(function(data) {            
            $('#product-container').html(data);

            $('[data-editorial="Seven Seas"]').each((index, item) => {
                $('[data-editorial="1"]').append($(item));
            });

            $('[data-editorial="Editorial Ivrea"]').each((index, item) => {
                $('[data-editorial="2"]').append($(item));
            });

            $('[data-editorial="NORMA Editorial"]').each((index, item) => {
                $('[data-editorial="3"]').append($(item));
            });
    
            $('[data-editorial="Planeta Cómic"]').each((index, item) => {
                $('[data-editorial="4"]').append($(item));
            });    
            
            $('[data-editorial="Panini Cómics"]').each((index, item) => {
                $('[data-editorial="5"]').append($(item));
            });

            $('[data-editorial="Milky Way Ediciones"]').each((index, item) => {
                $('[data-editorial="6"]').append($(item));
            });

            $('[data-editorial="ECC"]').each((index, item) => {
                $('[data-editorial="7"]').append($(item));
            });

            $('[data-editorial="Tomodomo Ediciones"]').each((index, item) => {
                $('[data-editorial="8"]').append($(item));
            });

            $('[data-editorial="Fandogamia"]').each((index, item) => {
                $('[data-editorial="9"]').append($(item));
            });

            $('[data-editorial]').each((index, item) => {
                if(!$(item).html().includes('ul'))
                {
                    $(item).remove();
                }
            });
        });
}