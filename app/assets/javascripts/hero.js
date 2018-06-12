$(document).ready(function() {
  $('#know-more').click(function() {
    $('html, body').animate({
      scrollTop: $('.about-us-section').offset().top }, 'slow'
    );
  });

  $('#know-how').click(function() {
    $('html, body').animate({
      scrollTop: $('.how-it-works').offset().top }, 'slow'
    );
  });
});
