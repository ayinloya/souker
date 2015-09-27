Meteor.methods
  sendEmail: (doc) ->
    console.log 'before'
    @unblock()

    email = Traction.findOne({id: doc}).email
    console.log 'email '+ email
    Send the email
    # Email.send
    #   to: email,
    #   from: "",
    #   subject: "",
    #   text: ""

    PrettyEmail.send 'call-to-action',
      to: email
      subject: 'Souker shop'
      heading: 'Awesome! Thanks for accepting our invitation'
      message: 'We will notify you immediately we launch. Stay tuned! \n Regards, \n Prince \n C.E.O'
      
    console.log 'email sent to '+ email