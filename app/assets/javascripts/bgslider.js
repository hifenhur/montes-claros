$(document).ready(function() {
		
	// Backwards navigation
	$("#back").click(function() {
		stopAnimation();
		navigate("back");
	});
	
	// Forward navigation
	$("#next").click(function() {
		stopAnimation();
		navigate("next");
	});
	
	var interval;
	$("#control").toggle(function(){
		stopAnimation();
	}, function() {
		// Change the background image to "pause"
		$(this).css({ "background-image" : "url(images/btn_pause.png)" });
		
		// Show the next image
		navigate("next");
		
		// Start playing the animation
		interval = setInterval(function() {
			navigate("next");
		}, slideshowSpeed);
	});
	
	var nav = $('.navegacao-banner li');
	nav.click(function(){
		stopAnimation();
		navigate($(this).index() + 1);
		interval = setInterval(function() {
			navigate("next");
		}, slideshowSpeed);
	});
	
	var activeContainer = 1;	
	var currentImg = 0;
	var animating = false;
	var navigate = function(direction) {
		// Check if no animation is running. If it is, prevent the action
		if(animating) {
			return;
		}
		else{
			if(!isNaN(direction)) {
				currentImg = direction;
			}
			if(direction == "next") {
				currentImg++;
				if(currentImg == photos.length + 1) {
					currentImg = 1;
				}
			}
			if(direction == "back") {
				currentImg--;
				if(currentImg == 0) {
					currentImg = photos.length;
				}
			}	
		}
		
		var currentContainer = activeContainer;
		if(activeContainer == 1) {
			activeContainer = 2;
		} else {
			activeContainer = 1;
		}
		
		nav.removeClass('active').eq(currentImg-1).addClass('active');
		
		if(currentImg > 4){
			
			if(currentImg << photos.length){
				//bxslid.goToSlide((currentImg - 4));
			}
		}
		
		if(currentImg == 1){
			//bxslid.goToSlide(0);
		}		
		if(clicado = false){
			interval = setInterval(function() {
				navigate("next");
			}, slideshowSpeed);
		}		
		showImage(photos[currentImg - 1], currentContainer, activeContainer);
		
	};
	
	var currentZindex = -1;
	var showImage = function(photoObject, currentContainer, activeContainer) {
		animating = true;
		
		// Make sure the new container is always on the background
		currentZindex--;
		
		// Set the background image of the new active container
		$("#headerimg" + activeContainer).css({
			"background-image" : "url(" + photoObject.image + ")",
			"display" : "block",
			"z-index" : currentZindex
		});
		
		// Hide the header text
		$("#headertxt").css({"display" : "none"});
		
		// Set the new header text
		$("#firstline").html(photoObject.firstline);
		$("#secondline")
			.attr("href", photoObject.url)
			.html(photoObject.secondline);
		$("#pictureduri")
			.attr("href", photoObject.url)
			.html(photoObject.title);
		
		
		// Fade out the current container
		// and display the header text when animation is complete
		$("#headerimg" + currentContainer).fadeOut(function() {
			setTimeout(function() {
				$("#headertxt").css({"display" : "block"});
				animating = false;
			}, 500);
		});
	};
	
	var stopAnimation = function() {
		// Change the background image to "play"
		$("#control").css({ "background-image" : "url(images/btn_play.png)" });
		
		// Clear the interval
		clearInterval(interval);
	};
	
	// We should statically set the first image
	navigate("next");
	
	// Start playing the animation
	interval = setInterval(function() {
		navigate("next");
	}, slideshowSpeed);
	
});