AutoForm.hooks
  insertTractionForm: 
    onSuccess: (formType, result)->
      Materialize.toast("Your spot has been reserved", 60000)
      Meteor.call 'sendEmail', @currentDoc
      $(insertTractionForm).hide();
      $("#success").show()