@Errors = new Meteor.Collection null

Meteor.methods 
  'popupError': (message) ->
    Errors.insert
      message: message
      seen: false

Meteor.methods 
  'cleanErrors': ->
    Errors.remove seen: true
