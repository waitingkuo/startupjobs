Meteor.publish 'jobs', ->
  Jobs.find()

Meteor.publish 'space', ->
  Space.find()
