@Jobs = new Meteor.Collection 'jobs',
  schema:
    company:
      type: String
      label: '公司名稱'
    jobTitle:
      type: String
      label: '職缺'
    description:
      type: String
      label: '職缺說明'
    salaryLowerBound:
      type: Number
      label: '最低薪資'
    salaryUpperBound:
      type: Number
      label: '最高薪資'
    email:
      type: String
      regEx: SimpleSchema.RegEx.Email
    location:
      type: String
      label: '地址'
    ownerId:
      type: String
      autoValue: ->
        user = Meteor.user()
        if user
          return user._id
        else
          @unset
    voterIds:
      type: [String]
      defaultValue: []
    score:
      type: Number
      defaultValue: 0
      


Jobs.allow
  insert: (userId) -> userId?

  update: (userId) -> 
    userId and (userId is doc.userId)

  remove: (userId) -> 
    userId and (userId is doc.userId)

Meteor.methods

  'jobPlus1': (jobId) ->
    if Meteor.user()
      if Jobs.findOne {_id: jobId, voterIds: Meteor.userId()}
        return Meteor.call 'popupError', '您已經給過分數'
      else
        Jobs.update {_id: jobId}, 
          $inc: {score: 1}
          $addToSet: {voterIds: Meteor.userId()}
    else
      Meteor.call 'popupError', '請先登入'

  'jobMinus1': (jobId) ->
    if Meteor.user()
      if Jobs.findOne {_id: jobId, voterIds: Meteor.userId()}
        return Meteor.call 'popupError', '您已經給過分數'
      else
        Jobs.update {_id: jobId},
          $inc: {score: -1}
          $addToSet: {voterIds: Meteor.userId()}
    else
      Meteor.call 'popupError', '請先登入'
