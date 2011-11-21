$('document').ready(function(){
	//Hover fader
	$('.imagefade').children('').hover(function(){
		$(this).stop(true, true).animate({opacity: 0.8}, {duration: 300});
	},function(){
		$(this).stop(true, true).animate({opacity: 1}, {duration: 300});
	});
	
	
});