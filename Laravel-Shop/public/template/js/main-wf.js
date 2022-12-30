

const App = {
    
    sliderProducts: function(element) {
        var $sliderList = $(`${element}`)
        
        if($sliderList!=null) {
            console.log($sliderList);
            $sliderList.trigger('destroy.owl.carousel');
            $sliderList.owlCarousel({
                margin:10,
                loop:true,
                nav:true,
                autoplay:true,
                autoplayTimeout:5000,
                autoplayHoverPause:true,
                responsive:{
                    400:{
                        items:2
                    },
                    600:{
                        items:3
                    },
                    800: {
                        item: 4
                    },
                    1000:{
                        items:5
                    }
                }
            });
        }
    },
    start: function() {
        this.sliderProducts('#product-sale-slider')
    }  
}
 
App.start()


