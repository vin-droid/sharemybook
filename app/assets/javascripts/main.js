
/*close side bar if anywhere clicked*/ 
$('html').click(function(event){
	var target = $(event.target);
	console.log('clicked');
	console.log(target);
	if ($('.profile-menu').hasClass('in')){
		if (target.is($('span.tab-icon.glyphicon.glyphicon-user')) || target.is($('span.tab-title')) || target.is($('#user-info'))){
		}
		else{
			$('#user-info').click();
		}
	}
	if($('.sidebar-menu').hasClass('s-in')){
		if(target.is($('.sidebar-menu')) || target.is($('span.icon-bar')) ){
		}
		else{
          $('#sidebar').click();
		}
	}
});



	 	function scrolling(){
	 		// $currentTab = this;
	 		if (screen.width < 769){
	 			$('.navbar-toggle').click();
	 		} 

	 		if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'')
	 			&& location.hostname == this.hostname) {
	 			var $target = $(this.hash);
	 		$target = $target.length && $target
	 		|| $('[name=' + this.hash.slice(1) +']');
	 		if ($target.length) {
	 			var targetOffset = $target.offset().top-50	;
	 			$('html,body')
	 			.animate({scrollTop: targetOffset}, 1000);
	 			// setTimeout(function(){
	 			// 	// debugger;
	 			// 	$($target).siblings().removeClass('animate');
	 			// 	$($target).delay(1000).addClass('animate');
	 			// }, 1000);

	 			return false;
	 		}
	 	}
	 }


	 /*add smoth scrolling*/ 
	 jQuery(function($) {

	 	"use strict";

	 	var win = $(window)
	 	, target = $('body')
	 	, wrapper = target.find('> div')
            , easing = "ease-out" //css easing
            , duration = ".2s" //duration ms(millisecond) or s(second)
            , top = 0
            , resizeTimeout
            , jmScroll = {
            	_init: function() {
            		if( wrapper.length == 1 ) {
            			target.css({
            				margin: '0',
            				padding: '0',
            				width: '100%',
            				height: wrapper.height() + 'px'
            			});

            			wrapper.css({
            				transition: 'transform ' + duration + ' ' + easing,
            				position: 'fixed',
            				top: '0',
            				left: '0',
            				width: '100%',
            				padding: '0',
            				zIndex: '2',
            				display: 'block',
            				backfaceVisibility: 'hidden'
            			});

            			jmScroll._reFlow(function() {
            				jmScroll._scroll();
            			});
            		}
            	},

            	_scroll: function() {
            		top = win.scrollTop();
            		wrapper.css('transform', 'translateY(-' + top + 'px)');
            	},

            	_reFlow: function(callback) {
            		clearTimeout(resizeTimeout);
            		resizeTimeout = setTimeout(function() {
            			target.height(wrapper.height());

            			var getType = {};
            			var isCallback = callback && getType.toString.call(callback) === '[object Function]';

            			if(isCallback) {
            				callback();
            			}
            		}, 1000);
            	}
            };

            if (typeof window.ontouchstart == 'undefined') {
            	win.on({
            		scroll: function () {
            			jmScroll._scroll();
            		}
            		, resize: function() {
            			jmScroll._reFlow();
            		}
            		, load: function() {
            			jmScroll._init();
            		}
            	});
            }
        });