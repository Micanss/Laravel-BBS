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
   var n=0;
   if ($('textarea').val()) {
   	  n = ($('textarea').val().split("\n")).length-1;
   }
   var originHieght = parseInt($('textarea').css('height'));
   $('textarea').keyup(function() {
   	if ($(this).val().length != 0) {
   		$('#preview-box').empty();
	   	$('#preview-box').append(marked($(this).val()));
	   	$('#preview-box').removeAttr('hidden');
	} else {
		$('#preview-box').empty();
	 	$('#preview-box').attr('hidden',true);
	}
	n1 = $(this).val().split("\n").length-1;
	console.log(n1+'    '+n);
   	if ($(this)[0].scrollHeight > parseInt($(this).css('height'))) {
   		$(this).css('height',$(this)[0].scrollHeight+'px');
   	}
   	if (n1 < n) {
   		console.log($(this).css('height')+'   '+originHieght);
   		if (parseInt($(this).css('height')) < originHieght) {
   			console.log('xiaoyu');
   		} else {
   			$(this).css('height',parseInt($(this).css('height'))-20*(n-n1)+'px');
   		}
   	} 
   	n = n1;
   });
   $('#uploadimg').change(function () {
   	var file = $(this).val();
   	if (!/.(gif|png|jpeg|jpg)$/.test(file)) {
   		alert('上传文件必须为图片格式！');
   		$(this).val('');
   		return false;
   	}
   	var objUrl =  window.URL.createObjectURL(this.files[0]);
	console.log("objUrl = "+objUrl) ;
	console.log($(this).val());
	if (this.files[0].size > 5*1024*1024) {
		alert('上传文件大小不能超过5M！');
		$(this).val('');
   		return false;
	}
	console.log(this.files[0].size);
	$('#preview-img').attr('src',objUrl);
   })

   $('#category-select').change(function () {
   		$('.category-'+$(this).val()).css('display','block');
   		$('.category-'+$(this).val()).siblings('.category-hint').css('display','none');
   })
   $('.reply-ico').click(function () {
   	touser = $(this).parent().siblings('a').text()
   	// alert($(this).parent().siblings('a').text());
   	$('textarea').text('@'+touser+' ');
   	$('textarea').focus();
   })
   $('p img').click(function () {
   	$('#viewimg').attr('src',$(this).attr('src'));
   	$('.modal').modal('show');
   })
  });