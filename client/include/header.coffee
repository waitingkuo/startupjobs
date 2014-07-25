Template.header.helpers
  errors: -> Errors.find {}

Template.error.rendered = ->
  Meteor.defer =>
    Errors.update @data._id,
      $set: {seen: true}
