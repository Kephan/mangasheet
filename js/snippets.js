window.onload = get_head();
window.onload = get_header();

function get_header()
{
        $.ajax({
            method: "POST",
            url: "./snippets/header.php"            
        })
        .done(function(data) {            
            $('header').append(data);
        });
}

function get_head()
{
        $.ajax({
            method: "POST",
            url: "./snippets/head.php"            
        })
        .done(function(data) {            
            $('head').append(data);
        });
}