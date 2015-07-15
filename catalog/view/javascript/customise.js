/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

;(function($){
    var $contactLink = $('#contact-link'),
        $cover = $('.cover-content'),
        $contactBox = $('#contact-box'),
        $contactCancel = $('#contact-cancel'),
        $links = $('header ul.nav.navbar-nav a'),
        $contactForm = $('#contact-form'),
        $contactSubmit = $('#contact-submit');
        
    $contactLink.click(function(){
        $cover.addClass('show-contact');
        $('body').addClass('show-contact');
        $links.addClass('tmp-disable');
    });
    
    $contactCancel.click(function(){
        $cover.removeClass('show-contact');
        window.setTimeout(function(){
            $('body').removeClass('show-contact');
        }, 500);
        $links.removeClass('tmp-disable');
    });

    $(".contact-link").click(function(){
        $contactLink.trigger('click');
    });

})(jQuery);
