// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require jquery
//= require bootstrap.growl
//= require bootbox


/* Spin */
$(document).ready(function() {
  // Global ajax cursor change
  $(document)
    .ajaxStart(function () {
        $('#global-spin').fadeIn('slow');
    })
    .ajaxStop(function () {
        $('#global-spin').fadeOut('slow');
    });
});

// /* Sobrescreve  data-confirm do Rails */
// var confirmed = function(element, result) {
//   if (result.value) {
//     // User clicked confirm button
//     element.removeAttribute('data-confirm')
//     element.click()
//   }
// }

// var showConfirmationDialog = function(element) {
//   var message = element.attr('data-confirm');

//   if (!message) { return true; }
//    var opts = {
//     title: "Confirmação",
//     message: message,
//     buttons: {
//         confirm: {
//             label: 'Sim',
//             className: 'btn-success'
//         },
//         cancel: {
//             label: 'Não',
//             className: 'btn-danger'
//         }
//     },
//     callback: confirmed(element, result)
//   };
//   bootbox.confirm(opts);
// }

// var allowAction = function(element) {
//   if (element.getAttribute('data-confirm') === null) {
//     return true;
//   }

//   showConfirmationDialog(element)
//   return false;
// }

// function handleConfirm(element) {
//   if (!allowAction(this)) {
//     Rails.stopEverything(element)
//   }
// }

// Rails.delegate(document, 'a[data-confirm]', 'click', handleConfirm)

