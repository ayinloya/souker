Meteor.methods
  sendEmail: (doc) ->
    console.log 'before'
    @unblock()

    email = Traction.findOne({id: doc}).email
    console.log 'email '+ email
    # Send the email
    # Email.send
    #   to: email,
    #   from: "",
    #   subject: "You are an achiever, start saving with fun",
    #   text: ""

    # PrettyEmail.send 'call-to-action',
    #   to: email
    #   subject: 'You are an achiever, start saving with fun'
    #   heading: 'Awesome! Thanks for accepting our invitation'
    #   message: 'We will notify you immediately we launch. Stay tuned! \nSave little by little, get rewarded for your effort \n Regards, \n Prince \n C.E.O'
      
    # console.log 'email sent to '+ email