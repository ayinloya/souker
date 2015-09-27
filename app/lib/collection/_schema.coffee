@Schemas = {}
@Traction = new Mongo.Collection('traction')

@Schemas.BetaTesters = new SimpleSchema
  email:
    type: String
    regEx: SimpleSchema.RegEx.Email
    unique: true
    autoform:
      label: false
      placeholder: 'email'

Traction.attachSchema(Schemas.BetaTesters)