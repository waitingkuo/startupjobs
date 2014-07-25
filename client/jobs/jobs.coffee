#Template.jobList.helpers
#  jobs: -> Jobs.find()

Template.jobListItem.events
  'click .job-plus-1': (e) ->
    e.preventDefault()
    Meteor.call 'jobPlus1', @_id
  'click .job-minus-1': (e) ->
    e.preventDefault()
    Meteor.call 'jobMinus1', @_id


