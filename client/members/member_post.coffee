@Template.memberPost.helpers(
    userHeadCount:()->
        userId = Meteor.userId()
        userHeadCount.findOne({userId:userId})
)