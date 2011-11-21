

		
	//Cufon Font Replacement
	Cufon.replace('.font', {
		hover: true,fontFamily:'ColaborateLight'});<!--//['.font' class name]-->
	Cufon.replace('.font-1', {hover: true,fontFamily:'Colaborate-Thin'});<!--//['.font' class name]-->
	

	
	

jQuery(document).ready(function(){

$('.input-active').focus(function(){
		var value = $.trim($(this).val()),
		title = $(this).attr('title');
		if(value == title){
			$(this).val('');
		}
	});$('.input-active').blur(function(){
		var value = $.trim($(this).val()),
		title = $(this).attr('title');
		if(value == ''){
			$(this).val(title);
		}
	});
});




jQuery(document).ready(function(){
	//Set opacity on each span to 0%
    jQuery(".hoverimage").css({'opacity':'0'});
	jQuery('.fade a').hover(
		function() {
			jQuery(this).find('.hoverimage').stop().fadeTo(400, 0.6);
		},
		function() {
			jQuery(this).find('.hoverimage').stop().fadeTo(300, 0);
		}
	)
});

jQuery(document).ready(function(){
	//Set opacity on each span to 0%
    jQuery(".hoverimageflat").css({'opacity':'0'});
	jQuery('.fade a').hover(
		function() {
			jQuery(this).find('.hoverimageflat').stop().fadeTo(400, 0.6);
		},
		function() {
			jQuery(this).find('.hoverimageflat').stop().fadeTo(300, 0);
		}
	)
});

jQuery(document).ready(function(){
	//Set opacity on each span to 0%
    jQuery(".hoverimagebig").css({'opacity':'0'});
	jQuery('.fade a').hover(
		function() {
			jQuery(this).find('.hoverimagebig').stop().fadeTo(400, 0.6);
		},
		function() {
			jQuery(this).find('.hoverimagebig').stop().fadeTo(300, 0);
		}
	)
});
jQuery(document).ready(function(){
	//Set opacity on each span to 0%
    jQuery(".hoverimagesmall").css({'opacity':'0'});
	jQuery('.fade a').hover(
		function() {
			jQuery(this).find('.hoverimagesmall').stop().fadeTo(400, 0.6);
		},
		function() {
			jQuery(this).find('.hoverimagesmall').stop().fadeTo(300, 0);
		}
	)
});
jQuery(document).ready(function(){
	//Set opacity on each span to 0%
    jQuery(".hovervideo").css({'opacity':'0'});
	jQuery('.fade a').hover(
		function() {
			jQuery(this).find('.hovervideo').stop().fadeTo(400, 0.6);
		},
		function() {
			jQuery(this).find('.hovervideo').stop().fadeTo(300, 0);
		}
	)
});


jQuery(document).ready(function(){
	$(".bigthumb").colorbox();
});



