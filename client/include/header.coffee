Template.header.helpers
  errors: -> Errors.find {}
  memberProfile: ->
    userId = Meteor.userId()
    UserHeadCount.findOne({userId:userId})

Template.error.rendered = ->
Meteor.defer =>
    Errors.update @data._id,
      $set: {seen: true}

  

