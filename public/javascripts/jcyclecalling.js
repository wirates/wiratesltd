//Jquery JCycle Slider ( index.html )
jQuery(document).ready(function(){

	$('#slider').cycle({
		fx:'fade',
		timeout:5000,
		speed: 500,
		before: onBefore,
		after: onAfter
	});
	
	
		function onAfter(){
		$(this).find('h2').animate({opacity: 0.8, left: 20}, {queue: false, duration: 400, easing:'swing'});
		$(this).find('p').animate({opacity: 0.8, left: 20}, {queue: false, duration: 600, easing:'swing'});
		}
	
		function onBefore(){
		$(this).find('h2').animate({opacity: 0, left: -50}, {queue: false, duration: 400, easing:'swing'});
		$(this).find('p').animate({opacity: 0, left: 400}, {queue: false, duration: 400, easing:'swing'});
		}
});