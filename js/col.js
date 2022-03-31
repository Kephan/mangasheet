window.onload = get_collection();

function get_collection() {
    $.ajax({
        method: "POST",
        url: "./sql/get_col_info.php",
        data: { url: window.location.href },
    }).done(function (data) {
        $("#collection-container").html(data);
    });

    $.ajax({
        method: "POST",
        url: "./sql/get_col_items.php",
        data: { url: window.location.href },
    }).done(function (data) {
        $("#product-container").html(data);
        document.title += ' - ' + $('h1[manga-title]').text();
    });
}

$("body").on("click", ".follow-coll-link", function (event) {
    event.preventDefault();
    console.log($(this).attr("data-col-id"));

    $.ajax({
        method: "POST",
        url: "./sql/add_serie.php",
        data: { coleccion: $(this).attr("data-col-id") },
    }).done(function (data) {
        console.log(data);
    });

    $(this).removeClass("follow-coll-link");
    $(this).addClass("unfollow-coll-link");
    $(this).text("Dejar de seguir");
});

$("body").on("click", ".unfollow-coll-link", function (event) {
    event.preventDefault();

    $.ajax({
        method: "POST",
        url: "./sql/delete_serie.php",
        data: { coleccion: $(this).attr("data-col-id") },
    }).done(function (data) {

    });

    $.ajax({
        method: "POST",
        url: "./sql/delete_all_readed_volume.php",
        data: { coleccion: $(this).attr("data-col-id") },
    }).done(function (data) {

    });

    $(this).removeClass("unfollow-coll-link");
    $(this).addClass("follow-coll-link");
    $(this).text("Seguir");
    
    $(".not-already-bought-link").addClass("already-bought-link");
    $(".not-already-bought-link").html('<i class="far fa-bookmark" aria-hidden="true"></i>');
    $(".not-already-bought-link").removeClass("not-already-bought-link");
});

$("body").on("click", ".already-bought-link", function (event) {
    event.preventDefault();

    if ($(".follow-coll-link").length > 0) {
        $.ajax({
            method: "POST",
            url: "./sql/add_serie.php",
            data: { coleccion: $(this).attr("data-col-id") },
        }).done(function (data) {
            console.log(data);
        });

        $(".follow-coll-link").addClass("unfollow-coll-link");
        $(".follow-coll-link").text("Dejar de seguir");
        $(".follow-coll-link").removeClass("follow-coll-link");
    }

    $.ajax({
        method: "POST",
        url: "./sql/readed_volume.php",
        data: {
            coleccion: $(this).attr("data-col-id"),
            vol: $(this).attr("data-vol-id"),
            volnum: $(this).attr("data-vol-num"),
            especial: $(this).attr('especial')
        },
    }).done(function (data) {

    });

    $('.already-bought-link[data-vol-id="' + $(this).attr("data-vol-id") + '"]').addClass("not-already-bought-link");
    if ($(this).attr('popup') == '1') {
        $('.already-bought-link[data-vol-id="' + $(this).attr("data-vol-id") + '"]').html('<i class="fas fa-bookmark" aria-hidden="true"></i>');
        $(this).text('Comprado');
    } else {
        $('.already-bought-link[data-vol-id="' + $(this).attr("data-vol-id") + '"]').html('<i class="fas fa-bookmark" aria-hidden="true"></i>');    
    }        
    $('.already-bought-link[data-vol-id="' + $(this).attr("data-vol-id") + '"]').removeClass("already-bought-link");
});

$("body").on("click", ".not-already-bought-link", function (event) {
    event.preventDefault();

    $.ajax({
        method: "POST",
        url: "./sql/delete_readed_volume.php",
        data: {
            coleccion: $(this).attr("data-col-id"),
            vol: $(this).attr("data-vol-id"),
            volnum: $(this).attr("data-vol-num"),
            comprado: 1,
            especial: $(this).attr('especial')
        },
    }).done(function (data) {

    });
    
    $('.not-already-bought-link[data-vol-id="'+$(this).attr("data-vol-id")+'"]').addClass("already-bought-link");
    if ($(this).attr('popup') == '1') {
        $('.not-already-bought-link[data-vol-id="' + $(this).attr("data-vol-id") + '"]').html('<i class="far fa-bookmark" aria-hidden="true"></i>');
        $('.not-already-readed-link[data-vol-id="' + $(this).attr("data-vol-id") + '"]').text('No leído');
        $(this).text('No comprado');
    } else {
        $('.not-already-bought-link[data-vol-id="' + $(this).attr("data-vol-id") + '"]').html('<i class="far fa-bookmark" aria-hidden="true"></i>');
        $('.not-already-readed-link[data-vol-id="' + $(this).attr("data-vol-id") + '"]').html('<i class="far fa-check-square" aria-hidden="true"></i>');
    }        
    $('.not-already-bought-link[data-vol-id="' + $(this).attr("data-vol-id") + '"]').removeClass("not-already-bought-link");
});

$("body").on("click", ".comment-link", function (event) {
    
    event.preventDefault();

    $("#product-container").addClass("hidden");
    $("#comment-container").removeClass("hidden");

    get_comments();
});

$("body").on("click", ".already-readed-link", function (event) {
    event.preventDefault();
    
    let comprado = 0;

    if ($(".follow-coll-link").length > 0) {
        $.ajax({
            method: "POST",
            url: "./sql/add_serie.php",
            data: { coleccion: $(this).attr("data-col-id") },
        }).done(function (data) {
            console.log(data);
        });

        $(".follow-coll-link").addClass("unfollow-coll-link");
        $(".follow-coll-link").text("Dejar de seguir");
        $(".follow-coll-link").removeClass("follow-coll-link");
    }

    if ($('.not-already-bought-link[data-vol-id="'+$(this).attr('data-vol-id')+'"]').length > 0) {
        comprado = 1;
    } else {
        $('.already-bought-link[data-vol-id="' + $(this).attr("data-vol-id") + '"]').addClass("not-already-bought-link");
        if ($(this).attr('popup') == '1') {
            $('.already-bought-link[data-vol-id="' + $(this).attr("data-vol-id") + '"]').html('<i class="fas fa-bookmark" aria-hidden="true"></i>');
            $('.already-bought-link[popup="1"]').text('Comprado');
        } else {
            $('.already-bought-link[data-vol-id="' + $(this).attr("data-vol-id") + '"]').html('<i class="fas fa-bookmark" aria-hidden="true"></i>');    
        }        
        $('.already-bought-link[data-vol-id="' + $(this).attr("data-vol-id") + '"]').removeClass("already-bought-link");
        comprado = 0;
    }

    $.ajax({
        method: "POST",
        url: "./sql/readed_volume.php",
        data: {
            coleccion: $(this).attr("data-col-id"),
            vol: $(this).attr("data-vol-id"),
            volnum: $(this).attr("data-vol-num"),
            comprado: comprado,
            leido: 1,
            especial: $(this).attr('especial')
        },
    }).done(function (data) {
        console.log(data)
    });

    $('.already-readed-link[data-vol-id="'+$(this).attr("data-vol-id")+'"]').addClass("not-already-readed-link");
    if ($(this).attr('popup') == '1') {
        $('.already-readed-link[data-vol-id="' + $(this).attr("data-vol-id") + '"]').html('<i class="fas fa-check-square" aria-hidden="true"></i>');
        $(this).text('Leído');
    } else {
        $('.already-readed-link[data-vol-id="' + $(this).attr("data-vol-id") + '"]').html('<i class="fas fa-check-square" aria-hidden="true"></i>');
        $('.already-bought-link[data-vol-id="' + $(this).attr("data-vol-id") + '"]').html('<i class="fas fa-bookmark" aria-hidden="true"></i>');
    }        
    $('.already-readed-link[data-vol-id="' + $(this).attr("data-vol-id") + '"]').removeClass("already-readed-link");
});

$("body").on("click", ".not-already-readed-link", function (event) {
    event.preventDefault();

    $.ajax({
        method: "POST",
        url: "./sql/readed_volume.php",
        data: {
            coleccion: $(this).attr("data-col-id"),
            vol: $(this).attr("data-vol-id"),
            volnum: $(this).attr("data-vol-num"),
            comprado: 1,
            leido: 0,
            especial: $(this).attr('especial')
        },
    }).done(function (data) {

    });
    
    $('.not-already-readed-link[data-vol-id="'+$(this).attr("data-vol-id")+'"]').addClass("already-readed-link");
    if ($(this).attr('popup') == '1') {
        $('.not-already-readed-link[data-vol-id="' + $(this).attr("data-vol-id") + '"]').html('<i class="far fa-check-square" aria-hidden="true"></i>');
        $(this).text('No leído');
    } else {
        $('.not-already-readed-link[data-vol-id="' + $(this).attr("data-vol-id") + '"]').html('<i class="far fa-check-square" aria-hidden="true"></i>');    
    }        
    $('.not-already-readed-link[data-vol-id="' + $(this).attr("data-vol-id") + '"]').removeClass("not-already-readed-link");
});

$("body").on("click", "#send-comment", function (event) {
    
    event.preventDefault();
    
    let now = new Date();
    let date = now.getFullYear() + '-' + (now.getMonth()+ 1) + '-' + now.getDate() + ' ' + now.getHours() + ':' + now.getMinutes() + ':' + now.getSeconds();    

    $.ajax({
        method: "POST",
        url: "./sql/add_comments.php",
        data: {
            comentario: $('#comment-text').val(),
            coleccion: $('[data-col-id]').attr('data-col-id'),
            fecha: date
        },
    }).done(function (data) {
        $('#comment-text').val('');        
            
        get_comments();
    });    
});

$("body").on("click", "#send-comment-popup", function (event) {
    
    event.preventDefault();
    
    let now = new Date();
    let date = now.getFullYear() + '-' + (now.getMonth()+ 1) + '-' + now.getDate() + ' ' + now.getHours() + ':' + now.getMinutes() + ':' + now.getSeconds();    
    let volnum = $(this).attr('data-vol');

    console.log(volnum);

    $.ajax({
        method: "POST",
        url: "./sql/add_comments.php",
        data: {
            comentario: $('#comment-text').val(),
            coleccion: $('[data-col-id]').attr('data-col-id'),
            volnum: volnum,
            fecha: date
        },
    }).done(function (data) {
        $('#comment-text').val('');        
        $.ajax({
            method: "POST",
            url: "./sql/get_comments.php",
            data: {
                coleccion: $('[data-col-id]').attr('data-col-id'),
                volnum: volnum
            },
        }).done(function (data) {        
            if (data != '') {        
                $('#comments-con').html(data);
                $.ajax({
                    method: "POST",
                    url: "./sql/get_replies.php",
                    data: {
                        coleccion: $('[data-col-id]').attr('data-col-id'),
                        volnum: volnum
                    },
                }).done(function (data) {                
                    $('#comments-con').append(data);
                    $('.comment-box[data-reply-id]').each(function () {
                        let replyID = $(this).attr('data-reply-id');
                        $('.comment-box[data-id="' + replyID + '"]').append($(this));
                    });
                    comment_date();
                });
            } else {
                $('#comments-con').html('<div class="first-comment"><p>¡Sé el primero en comentar!</p></div>');
            }        
        });
    });    
});


$("body").on("click", ".vol-link", function (event) {
    
    event.preventDefault();

    $("#product-container").removeClass("hidden");
    $("#comment-container").addClass("hidden");
});

$("body").on("click", ".edit-comment", function (event) {
    
    event.preventDefault();

    let comID = $(this).attr('data-id');
    $(this).addClass('hidden');
    
    $('.save-comment[data-id=' + comID + ']').removeClass('hidden');
    $('.reply-comment[data-id=' + comID + ']').addClass('hidden');
    $('.comment-text[data-id=' + comID + ']').addClass('hidden');
    $('.comment-text-cont[data-id=' + comID + ']').append('<textarea class="edit-comment-textarea" data-id="'+comID+'">'+$('.comment-text[data-id=' + comID + ']').text()+'</textarea>');

});

$("body").on("click", ".save-comment", function (event) {
    
    event.preventDefault();

    let comID = $(this).attr('data-id');
    let vol = $(this).attr('data-vol');

    if ($('.edit-comment-textarea[data-id='+comID+']').val() == $('.comment-text[data-id=' + comID + ']').text()) {
        $(this).addClass('hidden');
        $('.edit-comment[data-id=' + comID + ']').removeClass('hidden');
        $('.comment-text[data-id=' + comID + ']').removeClass('hidden');
        $('.reply-comment[data-id=' + comID + ']').removeClass('hidden');
        $('.edit-comment-textarea[data-id='+comID+']').remove();
    } else {
        $.ajax({
            method: "POST",
            url: "./sql/update_comment.php",
            data: {
                comentario: $('.edit-comment-textarea[data-id='+comID+']').val(),
                comID: comID,
                editado: 1
            },
        }).done(function (data) {
            if (vol == 0) {
                get_comments();
            } else {
                $.ajax({
                    method: "POST",
                    url: "./sql/get_comments.php",
                    data: {
                        coleccion: $('[data-col-id]').attr('data-col-id'),
                        volnum: vol
                    },
                }).done(function (data) {        
                    if (data != '') {        
                        $('#comments-con').html(data);
                        $.ajax({
                            method: "POST",
                            url: "./sql/get_replies.php",
                            data: {
                                coleccion: $('[data-col-id]').attr('data-col-id'),
                                volnum: vol
                            },
                        }).done(function (data) {                
                            $('#comments-con').append(data);
                            $('.comment-box[data-reply-id]').each(function () {
                                let replyID = $(this).attr('data-reply-id');
                                $('.comment-box[data-id="' + replyID + '"]').append($(this));
                            });
                            comment_date();
                        });
                    } else {
                        $('#comments-con').html('<div class="first-comment"><p>¡Sé el primero en comentar!</p></div>');
                    }        
                });
            }                    
        });   
    }
});

$("body").on("click", ".reply-comment", function (event) {
    
    event.preventDefault();

    let comID = $(this).attr('data-id');
    let volID =$(this).attr('data-vol');
    $('.edit-comment[data-id=' + comID + ']').addClass('hidden');
    $(this).addClass('hidden');

    $('.comment-box[data-id=' + comID + ']').append(`
    <div class="reply-box" data-id="${comID}">
        <textarea class="edit-comment-textarea" data-id="${comID}"></textarea>
        <div class="reply-buttons row w100">
            <button class="reply reply-yes answer" data-vol="${volID}" data-id="${comID}">Responder</button>
            <button class="reply reply-no answer-no" data-vol="${volID}" data-id="${comID}">Cancelar</button>
        </div>
    </div>
    `);
});

$("body").on("click", ".reply-yes", function (event) {
    
    let comID = $(this).attr('data-id');
    let vol =$(this).attr('data-vol');

    let now = new Date();
    let date = now.getFullYear() + '-' + (now.getMonth() + 1) + '-' + now.getDate() + ' ' + now.getHours() + ':' + now.getMinutes() + ':' + now.getSeconds();
    
    $('.edit-comment[data-id=' + comID + ']').removeClass('hidden');
    $('.reply-comment[data-id=' + comID + ']').removeClass('hidden');

    $.ajax({
        method: "POST",
        url: "./sql/add_comments.php",
        data: {
            comentario: $('.edit-comment-textarea[data-id="'+comID+'"]').val(),
            coleccion: $('[data-col-id]').attr('data-col-id'),
            fecha: date,
            reply: comID,
            volnum: vol
        },
    }).done(function (data) {
        $('#comment-text').val('');
        if (vol == 0) {
            get_comments();
        } else {
            $.ajax({
                method: "POST",
                url: "./sql/get_comments.php",
                data: {
                    coleccion: $('[data-col-id]').attr('data-col-id'),
                    volnum: vol
                },
            }).done(function (data) {        
                if (data != '') {        
                    $('#comments-con').html(data);
                    $.ajax({
                        method: "POST",
                        url: "./sql/get_replies.php",
                        data: {
                            coleccion: $('[data-col-id]').attr('data-col-id'),
                            volnum: vol
                        },
                    }).done(function (data) {                
                        $('#comments-con').append(data);
                        $('.comment-box[data-reply-id]').each(function () {
                            let replyID = $(this).attr('data-reply-id');
                            $('.comment-box[data-id="' + replyID + '"]').append($(this));
                        });
                        comment_date();
                    });
                } else {
                    $('#comments-con').html('<div class="first-comment"><p>¡Sé el primero en comentar!</p></div>');
                }        
            });
        }  
    });
});

$("body").on("click", ".reply-no", function (event) {
    
    let comID = $(this).attr('data-id');
    $('.reply-box[data-id=' + comID + ']').remove();
    $('.edit-comment[data-id=' + comID + ']').removeClass('hidden');
    $('.reply-comment[data-id=' + comID + ']').removeClass('hidden');

});

$("body").on("click", ".delete-comment", function (event) {
    
    event.preventDefault();

    let comID = $(this).attr('data-id');
    let vol = $(this).attr('data-vol');

    $('body').prepend(`
        <div class= "prevent-delete row">
            <div class="ask-question row">                
                <p>¿Quieres borrar este comentario?</p>
                <div>
                    <button class="answer no-delete-com" data-vol="${vol}" data-id="${comID}">Aceptar</button>
                    <button class="answer-no delete-com">Cancelar</button>
                </div>
            </div>
        </div>
    `);
});

$("body").on("click", ".no-delete-com", function (event) {
        
    let comID = $(this).attr('data-id');
    let vol = $(this).attr('data-vol');

    $.ajax({
        method: "POST",
        url: "./sql/delete_comment.php",
        data: {
            comID: comID
        },
    }).done(function (data) {
        console.log(vol)

        if (vol == 0) {
            get_comments();
        } else {
            $.ajax({
                method: "POST",
                url: "./sql/get_comments.php",
                data: {
                    coleccion: $('[data-col-id]').attr('data-col-id'),
                    volnum: vol
                },
            }).done(function (data) {        
                if (data != '') {        
                    $('#comments-con').html(data);
                    $.ajax({
                        method: "POST",
                        url: "./sql/get_replies.php",
                        data: {
                            coleccion: $('[data-col-id]').attr('data-col-id'),
                            volnum: vol
                        },
                    }).done(function (data) {                
                        $('#comments-con').append(data);
                        $('.comment-box[data-reply-id]').each(function () {
                            let replyID = $(this).attr('data-reply-id');
                            $('.comment-box[data-id="' + replyID + '"]').append($(this));
                        });
                        comment_date();
                    });
                } else {
                    $('#comments-con').html('<div class="first-comment"><p>¡Sé el primero en comentar!</p></div>');
                }        
            });
        }  
    });

    $('.prevent-delete').remove();
});

$("body").on("click", ".delete-com", function (event) {
        
    $('.prevent-delete').remove();
});

$("body").on("click", ".item-popup", function (event) {
        
    event.preventDefault();

    let colID = $(this).attr('data-col');
    let volnum = $(this).attr('data-vol');

    $('body').prepend(`
        <div class= "item-popup-container row">
            <div class="info-item">                
                
            </div>
            <div class="bg-item">                
                
            </div>
        </div>
    `);

    $.ajax({
        method: "POST",
        url: "./sql/get_item_info.php",
        data: {
            coleccion: colID,
            volumen: volnum,
            especial: $(this).attr('especial')
        },
    }).done(function (data) {
        $('.info-item').html(data);
        $.ajax({
            method: "POST",
            url: "./sql/get_comments.php",
            data: {
                coleccion: $('[data-col-id]').attr('data-col-id'),
                volnum: volnum
            },
        }).done(function (data) {        
            if (data != '') {        
                $('#comments-con').html(data);
                $.ajax({
                    method: "POST",
                    url: "./sql/get_replies.php",
                    data: {
                        coleccion: $('[data-col-id]').attr('data-col-id'),
                        volnum: volnum
                    },
                }).done(function (data) {                
                    $('#comments-con').append(data);
                    $('.comment-box[data-reply-id]').each(function () {
                        let replyID = $(this).attr('data-reply-id');
                        $('.comment-box[data-id="' + replyID + '"]').append($(this));
                    });
                    comment_date();
                });
            } else {
                $('#comments-con').html('<div class="first-comment"><p>¡Sé el primero en comentar!</p></div>');
            }        
        });
    });
});

$("body").on("click", ".close-button-info", function (event) {
    event.preventDefault();

    $('.item-popup-container').remove();
});

$("body").on("click", ".bg-item", function (event) {
    event.preventDefault();

    $('.item-popup-container').remove();
});

$("body").on("click", ".read-coll-link-item", function (event) {
    event.preventDefault();

    console.log($(this).attr("data-col-id"));

    $.ajax({
        method: "POST",
        url: "./sql/add_serie.php",
        data: { coleccion: $(this).attr("data-col-id") },
    }).done(function (data) {
        console.log(data);
    });
});


function comment_date() {    
    $('.comment-date').each(function () {
        let today = new Date(Date.now());

        let date_split = $(this).text().split(' ');

        let comment_date = new Date(date_split[0] + 'T' + date_split[1]);        

        let todaytime = (Date.parse(today) / 1000);
        let commenttime = (Date.parse(comment_date) / 1000);

        let time = todaytime - commenttime;

        let hours;
        let minutes;
        let seconds;
        let days;
        
        let date = comment_date.getDate();
        let month = (comment_date.getMonth() + 1);
        console.log(today, ' |||||| ', date_split, ' |||||| ', comment_date, ' |||||| ', todaytime, ' |||||| ', commenttime, ' |||||| ', time, date, month)

        if (time <= 60 && today.getMonth() == comment_date.getMonth()) {
            let seconds = time;
            $(this).text('Hace ' + seconds.toFixed(0) + ' s');
        } else if (time > 60 && time <= 3600 && today.getMonth() == comment_date.getMonth()) {
            minutes = Math.floor(time / 60);
            seconds = time % 60;
            $(this).text('Hace ' + minutes + ' m ' + seconds + ' s');
        } else if (time > 3600 && time < (3600 * 24) && today.getMonth() == comment_date.getMonth()) {
            hours = Math.floor(time / 3600);
            minutes = Math.floor((time % 3600) / 60);
            seconds = Math.floor((time % 3600) % 60);
            $(this).text('Hace ' + hours + ' h ' + minutes + ' m ' + seconds + ' s');
        } else if (time >= (3600 * 24) && Math.round(time / 84600) < daysInMonth(today.getFullYear(), today.getMonth()).getDate()) {
            days = Math.round(time / 84600);

            if (days <= 1) {
                $(this).text('Hace ' + days + ' día');   
            } else {
                $(this).text('Hace ' + days + ' días');
            }
        } else {
            if (date < 10) {
                date = '0' + date;
            }

            if (month < 10) {
                month = '0' + month;
            }

            $(this).text(date + '/' + month + '/' + comment_date.getFullYear());
        }
    });

}

function daysInMonth(year, month) {
    return new Date(year, (month + 1), 0);    
}

function get_comments() {    
    $.ajax({
        method: "POST",
        url: "./sql/get_comments.php",
        data: {
            coleccion: $('[data-col-id]').attr('data-col-id')
        },
    }).done(function (data) {        
        if (data != '') {        
            $('#comments-con').html(data);
            $.ajax({
                method: "POST",
                url: "./sql/get_replies.php",
                data: {
                    coleccion: $('[data-col-id]').attr('data-col-id')
                },
            }).done(function (data) {                
                $('#comments-con').append(data);
                $('.comment-box[data-reply-id]').each(function () {
                    let replyID = $(this).attr('data-reply-id');
                    $('.comment-box[data-id="' + replyID + '"]').append($(this));
                });
                comment_date();
            });
        } else {
            $('#comments-con').html('<div class="first-comment"><p>¡Sé el primero en comentar!</p></div>');
        }        
    });
}