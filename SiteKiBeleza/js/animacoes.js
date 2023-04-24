$('.banner').slick({
    slidesToShow: 1,
    slidesToScroll: 1,
    autoplay: true,
    autoplaySpeed: 2000,
    dots: true,
});

$('.galeria').slick({
    slidesToShow: 4,
    slidesToScroll: 1,
    autoplay: true,
    autoplaySpeed: 4800,
    responsive: [{
            breakpoint: 1024,
            settings: {
                slidesToShow: 2,
                slidesToScroll: 2,
                infinite: true,
                dots: true
            }
        },
        {
            breakpoint: 600,
            settings: {
                slidesToShow: 1,
                slidesToScroll: 1
            }
        },
        {
            breakpoint: 480,
            settings: {
                slidesToShow: 1,
                slidesToScroll: 1
            }
        }
    ]
});

new WOW().init();

document.querySelector(".abrir-menu").onclick = function() {
    document.documentElement.classList.add("menu-ativo");
}

document.querySelector(".fechar-menu").onclick = function() {
    document.documentElement.classList.remove("menu-ativo");
}

window.onscroll = function() {
    var top = window.pageYOffset || document.documentElement.scrollTop;
    //console.log(top);

    if (top > 600) {
        console.log("Menu fixo")
        document.getElementById("topofixo").classList.add("topofixo");
    } else {
        console.log("Abaixo de 600")
        document.getElementById("topofixo").classList.remove("topofixo");
    }
}