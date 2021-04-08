


$(document).ready(function() {
 $("#owl-demo").owlCarousel({
	margin: 20,
	nav: false,
	loop: false,
	autoplay:true,
	dots:true,
	rewind:true,
    autoplayTimeout:4000,
	autoplayHoverPause:true,
	 navText : ["<i class='fa fa-angle-left'></i>","<i class='fa fa-angle-right'></i>"],
	responsive: {
	  0: {
		items: 1
	  },
	  600: {
		items: 1
	  },
	  1000: {
		items: 1
	  }
	}
  })
})

$(document).ready(function() {
 $("#owl-demo1").owlCarousel({
	margin: 20,
	nav: false,
	loop: false,
	autoplay:true,
	dots:true,
	rewind:true,
    autoplayTimeout:4000,
	autoplayHoverPause:true,
	 navText : ["<i class='fa fa-angle-left'></i>","<i class='fa fa-angle-right'></i>"],
	responsive: {
	  0: {
		items: 1
	  },
	  600: {
		items: 2
	  },
	  1000: {
		items: 4
	  }
	}
  })
})

$(document).ready(function() {
  $("#owl-demo11").owlCarousel({
   margin: 20,
   nav: false,
   loop: false,
   autoplay:true,
   dots:true,
   rewind:true,
     autoplayTimeout:4000,
   autoplayHoverPause:true,
    navText : ["<i class='fa fa-angle-left'></i>","<i class='fa fa-angle-right'></i>"],
   responsive: {
     0: {
     items: 1
     },
     600: {
     items: 2
     },
     1000: {
     items: 4
     }
   }
   })
 })

$(document).ready(function() {
 $("#owl-demo2").owlCarousel({
	margin: 20,
	nav: false,
	loop: false,
	autoplay:true,
	dots:false,
	rewind:true,
    autoplayTimeout:4000,
	autoplayHoverPause:true,
	 navText : ["<i class='fa fa-angle-left'></i>","<i class='fa fa-angle-right'></i>"],
	responsive: {
	  0: {
		items: 1
	  },
	  600: {
		items: 2
	  },
	  1000: {
		items: 3
	  }
	}
  })
})


$(document).ready(function () {
  var slider = $('#slideritem');
  var thumbnailSlider = $('#thumbnailSlider');
  var duration = 500;
  slider.owlCarousel({
   loop:false,
   nav:false,
   items:1
  }).on('changed.owl.carousel', function (e) {
   thumbnailSlider.trigger('to.owl.carousel', [e.item.index, duration, true]);
  });
  thumbnailSlider.owlCarousel({
   loop:false,
   center:false, 
   nav:false,
   margin:20,
   responsive:{
    0:{
     items:3
    },
    600:{
     items:3
    },
    1000:{
     items:3
    }
   }
  }).on('click', '.owl-item', function () {
   slider.trigger('to.owl.carousel', [$(this).index(), duration, true]);
  }).on('changed.owl.carousel', function (e) {
   slider.trigger('to.owl.carousel', [e.item.index, duration, true]);
  });
 });


$('.sel').each(function() {
  $(this).children('select').css('display', 'none');
  
  var $current = $(this);
  
  $(this).find('option').each(function(i) {
    if (i == 0) {
      $current.prepend($('<div>', {
        class: $current.attr('class').replace(/sel/g, 'sel__box')
      }));
      
      var placeholder = $(this).text();
      $current.prepend($('<span>', {
        class: $current.attr('class').replace(/sel/g, 'sel__placeholder'),
        text: placeholder,
        'data-placeholder': placeholder
      }));
      
      return;
    }
    
    $current.children('div').append($('<span>', {
      class: $current.attr('class').replace(/sel/g, 'sel__box__options'),
      text: $(this).text()
    }));
  });
});

$('.sel').click(function() {
  $(this).toggleClass('active');
});

$('.sel__box__options').click(function() {
  var txt = $(this).text();
  var index = $(this).index();
  
  $(this).siblings('.sel__box__options').removeClass('selected');
  $(this).addClass('selected');
  
  var $currentSel = $(this).closest('.sel');
  $currentSel.children('.sel__placeholder').text(txt);
  $currentSel.children('select').prop('selectedIndex', index + 1);
});




$('.btn-number').click(function(e){
    e.preventDefault();
    
    fieldName = $(this).attr('data-field');
    type      = $(this).attr('data-type');
    var input = $("input[name='"+fieldName+"']");
    var currentVal = parseInt(input.val());
    if (!isNaN(currentVal)) {
        if(type == 'minus') {
            
            if(currentVal > input.attr('min')) {
                input.val(currentVal - 1).change();
            } 
            if(parseInt(input.val()) == input.attr('min')) {
                $(this).attr('disabled', true);
            }

        } else if(type == 'plus') {

            if(currentVal < input.attr('max')) {
                input.val(currentVal + 1).change();
            }
            if(parseInt(input.val()) == input.attr('max')) {
                $(this).attr('disabled', true);
            }

        }
    } else {
        input.val(0);
    }
});
$('.input-number').focusin(function(){
   $(this).data('oldValue', $(this).val());
});
$('.input-number').change(function() {
    
    minValue =  parseInt($(this).attr('min'));
    maxValue =  parseInt($(this).attr('max'));
    valueCurrent = parseInt($(this).val());
    
    name = $(this).attr('name');
    if(valueCurrent >= minValue) {
        $(".btn-number[data-type='minus'][data-field='"+name+"']").removeAttr('disabled')
    } else {
        alert('Sorry, the minimum value was reached');
        $(this).val($(this).data('oldValue'));
    }
    if(valueCurrent <= maxValue) {
        $(".btn-number[data-type='plus'][data-field='"+name+"']").removeAttr('disabled')
    } else {
        alert('Sorry, the maximum value was reached');
        $(this).val($(this).data('oldValue'));
    }
    
    
});




function openNav() {
    document.getElementById("mySidenav").style.width = "100%";
}

function closeNav() {
    document.getElementById("mySidenav").style.width = "0";
}




'use strict';

;( function ( document, window, index )
{
	var inputs = document.querySelectorAll( '.inputfile' );
	Array.prototype.forEach.call( inputs, function( input )
	{
		var label	 = input.nextElementSibling,
			labelVal = label.innerHTML;

		input.addEventListener( 'change', function( e )
		{
			var fileName = '';
			if( this.files && this.files.length > 1 )
				fileName = ( this.getAttribute( 'data-multiple-caption' ) || '' ).replace( '{count}', this.files.length );
			else
				fileName = e.target.value.split( '\\' ).pop();

			if( fileName )
				label.querySelector( 'span' ).innerHTML = fileName;
			else
				label.innerHTML = labelVal;
		});
		input.addEventListener( 'focus', function(){ input.classList.add( 'has-focus' ); });
		input.addEventListener( 'blur', function(){ input.classList.remove( 'has-focus' ); });
	});
}( document, window, 0 ));


$.fn.responsiveTabs = function () {
    return this.each(function () {
        var el = $(this), tabs = el.find('dt'), content = el.find('dd'), placeholder = $('<div class="responsive-tabs-placeholder"></div>').insertAfter(el);
        tabs.on('click', function () {
            var tab = $(this);
            tabs.not(tab).removeClass('active');
            tab.addClass('active');
            placeholder.html(tab.next().html());
        });
        tabs.filter(':first').trigger('click');
    });
};
$('.responsive-tabs').responsiveTabs();

$(document).ready(function () {
   $('.bar span').hide();
   $('#bar-five').animate({
      width: '75%' }, 1000);
   $('#bar-four').animate({
      width: '35%' }, 1000);
   $('#bar-three').animate({
      width: '20%' }, 1000);
   $('#bar-two').animate({
      width: '15%' }, 1000);
   $('#bar-one').animate({
      width: '30%' }, 1000);

   setTimeout(function () {
      $('.bar span').fadeIn('slow');
   }, 1000);

});


$('.acrd').accord();

$('.accord-single').accord({
	openSingle: true,
});		

$('#calendar').calendar();


