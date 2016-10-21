  $(document).ready(function() {
    $('#search').focus(function () {
      $(this).animate({width:'250px'},800);
    })
    $('#search').blur(function () {
      $(this).animate({width:'200px'},800);
    })
   $('.view-selector').mouseover(function() {
   	$(this).popover('show');
   });
   $('.view-selector').mouseleave(function () {
   	$(this).popover('hide');
   })
   $('.create-topic a').mouseover(function () {
   		$(this).css({background:'#4FB7AD'})
   })
   $('.create-topic a').mouseleave(function () {
   		$(this).css({background:'white'})
   })
   // $('.huoyue a').mouseover(function() {
   // 	$(this).popover('show');
   // })
   // $('.huoyue a').mouseleave(function () {
   // 	$(this).popover('hide');
   // })
  });