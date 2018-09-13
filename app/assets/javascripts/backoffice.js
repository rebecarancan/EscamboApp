//= require bootstrap_sb_admin_base_v2
//= require bootbox


/* Sobrescreve  data-confirm do Rails */
var confirmed = function(element, result) {
  if (result.value) {
    // User clicked confirm button
    element.removeAttribute('data-confirm')
    element.click()
  }
}

var showConfirmationDialog = function(element) {
  var message = element.attr('data-confirm');

  if (!message) { return true; }
   var opts = {
    title: "Confirmação",
    message: message,
    buttons: {
        confirm: {
            label: 'Sim',
            className: 'btn-success'
        },
        cancel: {
            label: 'Não',
            className: 'btn-danger'
        }
    },
    callback: confirmed(element, result)
  };
  bootbox.confirm(opts);
}

var allowAction = function(element) {
  if (element.getAttribute('data-confirm') === null) {
    return true;
  }

  showConfirmationDialog(element)
  return false;
}

function handleConfirm(element) {
  if (!allowAction(this)) {
    Rails.stopEverything(element)
  }
}

Rails.delegate(document, 'a[data-confirm]', 'click', handleConfirm)


