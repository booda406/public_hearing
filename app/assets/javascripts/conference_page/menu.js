$(document).ready(function(){
  $('div#txt_cont div:gt(0)').css('display', 'none');
  $('#menu ul li a').click(function(event){
    event.preventDefault();
    var id_tab = $(this).attr('href');
    $('#menu ul li a').removeClass('hover_tab');
    $(this).addClass('hover_tab');
    $('div.txt_tab:visible').hide();
    $(id_tab).show('slide');
  });
});