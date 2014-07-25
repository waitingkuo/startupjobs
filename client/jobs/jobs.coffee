#Template.jobList.helpers
#  jobs: -> Jobs.find()

Template.jobListItem.helpers
  salaryLowerBound: ->
    parseInt(@salaryLowerBound / 1000) + 'K'
  salaryUpperBound: ->
    parseInt(@salaryUpperBound / 1000) + 'K'


#Template.updateJob.helpers
#  job: -> Jobs.findOne _id
