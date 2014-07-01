// Off Canvas Flyout
jQuery(document).ready(function ($) {
  $('[data-toggle=offcanvas]').click(function () {
    $('.row-offcanvas').toggleClass('active')
  });
});
//Carousel
jQuery('.carousel').carousel({
  interval: 4000
})