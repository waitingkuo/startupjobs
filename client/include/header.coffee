Template.header.helpers
  memberProfile: ->
    userId = Meteor.userId()
    UserHeadCount.findOne({userId:userId})
  