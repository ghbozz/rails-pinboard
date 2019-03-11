//= require jquery
//= require jquery_ujs
//= require masonry/jquery.masonry
//= require_tree .

$(function(){
  $('#masonry-container').masonry({
    itemSelector: '.box',
    columnWidth: 200,
    isFitWidth: true
  });

});
