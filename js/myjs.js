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
   $('textarea').keyup(function() {
   	// console.log($(this).val)
   	if ($(this).val().length != 0) {
   		$('#preview-box').empty();
	   	$('#preview-box').append(marked($(this).val()));
	   	$('#preview-box').removeAttr('hidden');
	} else {
		$('#preview-box').empty();
	 	$('#preview-box').attr('hidden',true);
	}
   	if ($(this)[0].scrollHeight > 162) {
   		$(this).css('height',$(this)[0].scrollHeight);
   	} else {
   		$(this).css('height','162px');
   	}
   	console.log($(this).css('height')+'   '+$(this)[0].scrollHeight);
   });
   $('#uploadimg').change(function () {
   var objUrl =  window.URL.createObjectURL(this.files[0]);
	console.log("objUrl = "+objUrl) ;
	$('#preview-img').attr('src',objUrl);
   })
  });