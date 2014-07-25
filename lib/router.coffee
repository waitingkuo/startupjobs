Router.configure
  layoutTemplate: 'layout'


Router.map ->

  @route 'index',
    path: '/'
    template: 'index'
    data: ->
      jobs: -> Jobs.find()

  @route 'submitJob',
    path: '/submit-job'
    template: 'submitJob'

  @route 'updateJob',
    path: '/update-job/:_id'
    template: 'updateJob'
    data: ->
      job: => Jobs.findOne _id: @params._id

  @route 'jobDetail',
    path: '/jobs/:_id'
    template: 'jobDetail'
    data: ->
      job: => Jobs.findOne _id: @params._id

  
  @route 'coworking',
    path: '/coworking'
    template: 'coworking'

  @route 'memberPost',
    path: '/memberPost'
    onBeforeAction:(pause)->
      if not Meteor.user()
        if not Meteor.loggingIn()
          Router.go('/')
          pause()
  
    
  @route 'memberList',
    path: '/memberList'
