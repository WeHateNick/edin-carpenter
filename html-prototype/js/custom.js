// Off Canvas Flyout
$(document).ready(function () {
  $('[data-toggle=offcanvas]').click(function () {
    $('.row-offcanvas').toggleClass('active')
  });
});
//Carousel
$('.carousel').carousel({
  interval: 4000
})