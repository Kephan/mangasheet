window.onload = get_items();

function get_items()
{
        $.ajax({
            method: "POST",
            url: "./sql/get_series.php",
            data: { url: window.location.href }
        })
        .done(function(data) {
            console.log(data);
            $('#product-container').html(data);
            get_progress();
        });
}

function get_progress() {
    $('.progress-bar').each(function () {
        let max = $(this).attr('data-vol-max');    
        let last = $(this).attr('data-vol-read');
        
        let bar = (last * 100) / max;
         
        if (bar != 0) {
            $(this).children('div').css('width', bar + '%');    
        } else {
            $(this).children('div').css('display', 'none');    
        }
        

        if (bar == 100) {
            $(this).children('div').css('border-radius', '15px');    
        }
    });        
}