$(document).ready(function()
{
	
	intibasics();		
	$(".filtrarpor select").uniform();
	initScroller('#content_1');
	
});

//****************** BASICS ***********************//

function intibasics(){
	var licontrols = $('ul.list-destaques-cinema li');
	var slider = $('.destaque-cinema-images').bxSlider({
		controls: false,
		auto: true,
		speed: 200,
		mode: 'fade',
		onNextSlide: function(currentSlideNumber, totalSlideQty, currentSlideHtmlObject){					
			licontrols.removeClass('active').eq(currentSlideNumber).addClass('active');
		}
	});
	licontrols.hover(function(){
		slider.stopShow();
		licontrols.removeClass('active').eq($(this).index()).addClass('active');
		slider.goToSlide($(this).index());
	},function(){
		slider.startShow();
		$(this).dequeue();
	});
	
	var lojadestaque = $('.lojaDestaques .slide').bxSlider({
		controls: false,
		auto: true,
		mode: 'vertical',				
	});
}


function initScroller(e){
	$(window).load(function(){
		$(e).mCustomScrollbar({
			set_width:false, /*optional element width: boolean, pixels, percentage*/
			set_height:false, /*optional element height: boolean, pixels, percentage*/
			horizontalScroll:false, /*scroll horizontally: boolean*/
			scrollInertia:550, /*scrolling inertia: integer (milliseconds)*/
			scrollEasing:"easeOutCirc", /*scrolling easing: string*/
			mouseWheel:"auto", /*mousewheel support and velocity: boolean, "auto", integer*/
			autoDraggerLength:true, /*auto-adjust scrollbar dragger length: boolean*/
			scrollButtons:{ /*scroll buttons*/
				enable:false, /*scroll buttons support: boolean*/
				scrollType:"continuous", /*scroll buttons scrolling type: "continuous", "pixels"*/
				scrollSpeed:20, /*scroll buttons continuous scrolling speed: integer*/
				scrollAmount:40 /*scroll buttons pixels scroll amount: integer (pixels)*/
			},
			advanced:{
				updateOnBrowserResize:true, /*update scrollbars on browser resize (for layouts based on percentages): boolean*/
				updateOnContentResize:false, /*auto-update scrollbars on content resize (for dynamic content): boolean*/
				autoExpandHorizontalScroll:false /*auto expand width for horizontal scrolling: boolean*/
			},
			callbacks:{
				onScroll:function(){}, /*user custom callback function on scroll event*/
				onTotalScroll:function(){}, /*user custom callback function on bottom reached event*/
				onTotalScrollOffset:0 /*bottom reached offset: integer (pixels)*/
			}
		});
	});
}

//******************** TWITTER ********************//

function TwitterDateConverter(time){
	var date = new Date(time),
		diff = (((new Date()).getTime() - date.getTime()) / 1000),
		day_diff = Math.floor(diff / 86400);
 
	if ( isNaN(day_diff) || day_diff < 0 || day_diff >= 31 )
		return;
 
	return day_diff == 0 && (
			diff < 60 && "agora mesmo" ||
			diff < 120 && "1 minuto atrás" ||
			diff < 3600 && Math.floor( diff / 60 ) + " minutos atrás" ||
			diff < 7200 && "1 hora atrás" ||
			diff < 86400 && Math.floor( diff / 3600 ) + " horas atrás") ||
			day_diff == 1 && "hoje" ||
			day_diff < 7 && day_diff + " dias atrás" ||
			day_diff < 31 && Math.ceil( day_diff / 7 ) + " semanas atrás";
}
	

function init_twitter_tts(){
	
	var box1Search = "from:google";	
	
	$.getJSON("http://search.twitter.com/search.json?q="+box1Search+"&rpp=3&callback=?", function(data) {
		if(data.results.length > 0){
			var parsedURL;
			for(i=0;i<data.results.length;i++){
				parsedURL = data.results[i].text.parseURL().parseUsername().parseHashtag();
				imgResult = data.results[i].profile_image_url;
				create = data.results[i].created_at;
				/*$("<div class='box-twitter-topo'></div><img src="+imgResult+"><div class='box-twitter-meio'><a href=\"http://twitter.com/"+data.results[i].from_user+"\" target=\"_blank\" class=\"user\">@"+data.results[i].from_user+"</a> "+parsedURL+"<br /></div><div class='box-twitter-rodape'></div>").appendTo(".tts");*/
				
				
				$("<li><img src="+imgResult+"><div class='twitterItem'><span class='seta'></span><a href=\"http://twitter.com/"+data.results[i].from_user+"\" target=\"_blank\" class=\"user\">@"+data.results[i].from_user+"</a> "+parsedURL+"<br /><span class='formatTime'>"+TwitterDateConverter(create)+"</span></div><div class='clear'></div></li>").prependTo(".twitterblock");
				
					
					
			}
			$(".box-twitter-meio a").attr("target", "_blank");
		}
		
	});	
}

String.prototype.parseURL = function() {
	return this.replace(/[A-Za-z]+:\/\/[A-Za-z0-9-_]+\.[A-Za-z0-9-_:%&\?\/.=]+/, function(url) {
		return url.link(url);
	});
};
String.prototype.parseUsername = function() {
	return this.replace(/[@]+[A-Za-z0-9-_]+/, function(u) {
		var username = u.replace("@","")
		return u.link("http://twitter.com/"+username);
	});
};
String.prototype.parseHashtag = function() {
	return this.replace(/[#]+[A-Za-z0-9-_]+/, function(t) {
		var tag = t.replace("#","%23")
		return t.link("http://search.twitter.com/search?q="+tag);
	});
};


function txtBoxFormat(objeto, sMask, evtKeyPress) {
    var i, nCount, sValue, fldLen, mskLen,bolMask, sCod, nTecla;
	if(document.all) { // Internet Explorer
		nTecla = evtKeyPress.keyCode;
	} else if(document.layers) { // Nestcape
		nTecla = evtKeyPress.which;
	} else {
		nTecla = evtKeyPress.which;
		if (nTecla == 8 || nTecla == 0) {
			return true;
		}
	}
    sValue = objeto.value;
    // Limpa todos os caracteres de formatação que
    // já estiverem no campo.
    sValue = sValue.toString().replace( "-", "" );
    sValue = sValue.toString().replace( "-", "" );
    sValue = sValue.toString().replace( ".", "" );
    sValue = sValue.toString().replace( ".", "" );
    sValue = sValue.toString().replace( "/", "" );
    sValue = sValue.toString().replace( "/", "" );
    sValue = sValue.toString().replace( ":", "" );
    sValue = sValue.toString().replace( ":", "" );
    sValue = sValue.toString().replace( "(", "" );
    sValue = sValue.toString().replace( "(", "" );
    sValue = sValue.toString().replace( ")", "" );
    sValue = sValue.toString().replace( ")", "" );
    sValue = sValue.toString().replace( " ", "" );
    sValue = sValue.toString().replace( " ", "" );
    fldLen = sValue.length;
    mskLen = sMask.length;

    i = 0;
    nCount = 0;
    sCod = "";
    mskLen = fldLen;

    while (i <= mskLen) {
      bolMask = ((sMask.charAt(i) == "-") || (sMask.charAt(i) == ".") || (sMask.charAt(i) == "/") || (sMask.charAt(i) == ":"))
      bolMask = bolMask || ((sMask.charAt(i) == "(") || (sMask.charAt(i) == ")") || (sMask.charAt(i) == " "))

      if (bolMask) {
        sCod += sMask.charAt(i);
        mskLen++;
	  }else{
        sCod += sValue.charAt(nCount);
        nCount++;
      }
      i++;
    }
    objeto.value = sCod;

	if (nTecla != 8) { // backspace ou tab
		if(sMask.charAt(i-1) == "9"){ // apenas números...
			return ((nTecla > 47) && (nTecla < 58));
		}else{ // qualquer caracter...
			return true;
		} 
	}else{
		return true;
	}
}
