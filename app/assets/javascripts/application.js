// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require bootstrap-sprockets
//= require jquery_ujs
//= require turbolinks
//= require_tree .

//= require chart-simple

jQuery(function($){

  $('body').on('submit', 'form.ajax_form', function(e){
    e.preventDefault();
    var ajax_form = $(this),
    form_action = ajax_form.attr('action'),
    form_method = ajax_form.attr('method'),
    form_data = ajax_form.serializeArray();

    $.ajax({
      type: form_method,
      url: form_action,
      data: form_data,
      success: function(return_data){
        var form_wrapper = ajax_form.parent();
        if(form_wrapper.hasClass('editable_region')){
          ajax_form.find('a.edit_toggle').removeClass('submit_form').text('Edit');
          form_wrapper.toggleClass('editing');

          var progress_bar = ajax_form.find('.progress-bar');
          var new_progress_value = parseInt(return_data['rating']);
          if(progress_bar.length){
            var progress_bar_max = parseInt(progress_bar.attr('aria-valuemax'));
            progress_bar.attr('aria-valuenow', new_progress_value).css('width', new_progress_value * progress_bar_max + '%').text(new_progress_value + '/' + progress_bar_max);
            progress_bar.removeClass('progress-bar-success, progress-bar-warning, progress-bar-danger');
            if(new_progress_value / progress_bar_max >= 0.8){
              progress_bar.addClass('progress-bar-success');
            } else if(new_progress_value / progress_bar_max >= 0.4){
              progress_bar.addClass('progress-bar-warning');
            } else {
              progress_bar.addClass('progress-bar-danger');
            }
          }
        }
      }
    });
  });

	$('body').on('change, input', '.slider_container input[type="range"]', function(){
		var slider_container = $(this).closest('.slider_container');
		slider_container.find('span.slider_value').text($(this).val());
	});

	$('body').on('click', 'a.edit_toggle', function(){
  	var editable_region = $(this).closest('.editable_region');
  	if($(this).hasClass('submit_form')){
    	editable_region.find('form').submit();
  	} else {
    	$(this).addClass('submit_form').text('Save');
    	editable_region.toggleClass('editing');
  	}
	});



});