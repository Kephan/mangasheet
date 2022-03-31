const urlParams = new URLSearchParams(window.location.search);
window.onload = get_items();

function get_items() {

    $.ajax({
      method: "POST",
      url: "./sql/get_main_list.php",
      data: { url: window.location.href }
    }).done(function (data) {
      $('#product-container').html(data);      
      $('#search-bar').val(urlParams.get('search')).change();
    });    
}

$("body").on("click", ".change-page", function (event) {
  event.preventDefault();

  if ($(this).attr("data-page") == 1) {
    if (parseInt(urlParams.get("page")) - 1 >= 0) {
      window.location.href = "?page=" + (parseInt(urlParams.get("page")) - 1) + addSearch();
    } else {
      window.location.href = "?page=0" + addSearch();
    }
  } else if ($(this).attr("data-page") == 0) {
    window.location.href = "?page=0" + addSearch();
  } else if ($(this).attr("data-page") == 4) {
    let last = $('[data-last-page]').attr('data-last-page');
    window.location.href = "?page=" + last.split('.')[0] + addSearch();
  }else {
    if (urlParams.get("page")) {
      window.location.href = "?page=" + (parseInt(urlParams.get("page")) + 1) + addSearch();
    } else {
      window.location.href = "?page=1" + addSearch();
    }
  }
});

$("body").on("click", ".last-change-page", function (event) {
  event.preventDefault();
});

function addSearch() {
  if ($('#search-bar').val() != '') {
    return '&search=' + $('#search-bar').val();
  } else {
    return '';
  }

}

$("#search-bar").keyup(function (event) {  
  if (event.which == 13) {
    window.location.href = "?page=0" + addSearch();
  }
})

$("body").on("click", ".search-icon", function (event) {
  window.location.href = "?page=0" + addSearch();
});

$("body").on("change", "#search-bar", function (event) {
  $.ajax({
    method: "POST",
    url: "./sql/get_main_list.php",
    data: { search: $(this).val(), url:  window.location.href, page: 0  }
  }).done(function (data) {
    if (data != '') {
      $('#product-container').html(data);

      let last = $('[data-last-page]').attr('data-last-page');
      if (urlParams.get('page') > parseInt(last)) {        
        window.location.href = "?page=0" + addSearch();
      }
    } else {
      $('#product-container').html('<div class="search-warning">No hay resultados.</div>');
    }
  });
});

$("body").on("input", "#search-bar", function (event) {

  $.ajax({
    method: "POST",
    url: "./sql/get_main_list.php",
    data: { search: $(this).val(), url:  window.location.href  }
  }).done(function (data) {
      if (data != '') {
        $('#product-container').html(data);
      } else {
        $('#product-container').html('<div class="search-warning">No hay resultados.</div>');
      }      
    });

});

$("body").on("click", ".input-change", function (event) {
    
  event.preventDefault();

  $(this).html('<div class="input-change-page"><input type="number" id="page-in" value="' + $(this).text() + '"><a class="search-icon-page"><i class="fas fa-search" aria-hidden="true"></i></a></div>');

  $(this).removeClass('input-change');
  $(this).addClass('already-input-change');
  
});

$("body").on("click", ".search-icon-page", function (event) {
    
  event.preventDefault();
  
  window.location.href = "?page=" + ($('#page-in').val()-1) + addSearch();
  
});

/*

    data.forEach((element) => {
      let lower_dem = element.demografia.toLowerCase();
      let date = new Date(element.fecha);
      let month;
      let day;

      if (date.getMonth() < 10) {
        month = "0" + date.getMonth();
      } else {
        month = date.getMonth();
      }

      if (date.getDay() < 10) {
        day = "0" + date.getDay();
      } else {
        day = date.getDay();
      }

      $("#product-container").append(
        `
        <div class="product w20">
            <a class="item-wrapper" href="colecciones.php?coleccion=${
              element.ColID
            }">
                <div class="inner">
                    <div id="${element.ColID}${element.volumen}${
          element.esnovela
        }${
          element.ed_especial
        }" class="inner-content ${lower_dem}">
                        <div class="inner-info">
                            <ul>
                                <li><span class="info-title">Título:</span>  ${
                                  element.titulo_coleccion
                                }</li>
                                <li><span class="info-title">Título original:</span>  ${
                                  element.titulo_original
                                }</li>
                                <li><span class="info-title">Autor:</span>  ${
                                  element.autor
                                }</li>
                                <li><span class="info-title">Artista:</span>  ${
                                  element.artista
                                }</li>
                                <li><span class="info-title">Volúmenes editados:</span>  ${
                                  element.volumenes_es
                                }</li>
                                <li><span class="info-title">Volúmenes totales:</span>  ${
                                  element.volumenes_japon
                                }</li>
                                <li><span class="info-title">Idioma:</span>  ${
                                  element.idioma
                                }</li>
                                <li><span class="info-title">Editorial:</span>  ${
                                  element.editorial
                                }</li>
                                <li>
                                    <span class="info-title">Sinopsis:</span>
                                    <p>
                                        ${element.sinopsis}
                                    </p>
                                </li>
                            </ul>
                        </div>
                        <div class="inner-quick-info">
                            <p>${element.titulo_coleccion} n.º ${
          element.volumen
        }</p>
                            <p>${element.precio} € - ${
          element.paginas
        } páginas </p>
                            <p>${
                              day + "/" + month + "/" + date.getFullYear()
                            }</p>
                        </div>
                    </div>
                </div>
            </a>
        </div>
        `
      );
      if (element.ed_especial == 1) {
        $(
          "#" +
            element.ColID +
            element.volumen +
            element.esnovela +
            element.ed_especial
        ).prepend(`<div class="tag special-ed">Edición especial</div>`);
      }

      if (element.esnovela == 0) {
        $(
          "#" +
            element.ColID +
            element.volumen +
            element.esnovela +
            element.ed_especial
        ).prepend(`<div class="tag is-manga">Manga</div>`);
      } else {
        $(
          "#" +
            element.ColID +
            element.volumen +
            element.esnovela +
            element.ed_especial
        ).prepend(`<div class="tag is-novel">Novela ligera</div>`);
      }

      if (element.portada != null) {
        $(
          "#" +
            element.ColID +
            element.volumen +
            element.esnovela +
            element.ed_especial
        ).prepend(`<img class="cover" src="portadas/${element.portada}">`);
      } else {
        $(
          "#" +
            element.ColID +
            element.volumen +
            element.esnovela +
            element.ed_especial
        ).prepend(`<img class="cover" src="portadas/nodisponible.jpg">`);
      }
    });
  });

*/