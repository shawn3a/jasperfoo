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
        $('header').addClass('show-contact');
        $links.addClass('tmp-disable');
        $('body').css('overflow', 'hidden');
    });
    
    $contactCancel.click(function(){
        $('header').removeClass('show-contact');
        $links.removeClass('tmp-disable');
        $('body').css('overflow', 'auto');
    });

})(jQuery);
