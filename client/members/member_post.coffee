@Template.memberPost.helpers(
    memberProfile:()->
        userId = Meteor.userId()
        UserHeadCount.findOne({userId:userId})
)