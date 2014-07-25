Router.configure
  layoutTemplate: 'layout'

  onAfterAction: ->
    Errors.remove {seen: true}
  waitOn: -> [
    Meteor.subscribe 'jobs'
    Meteor.subscribe 'space'
  ]

Router.map ->

  @route 'index',
    path: '/'
    template: 'index'
    data: ->
      jobs: -> Jobs.find()

  @route 'submitJob',
    path: '/submit-job'
    template: 'submitJob'
    onBeforeAction: (pause) ->
      if not Meteor.user()?
        Meteor.call 'popupError', '請先登入'
        Router.go 'index'

  @route 'updateJob',
    path: '/update-job/:_id'
    template: 'updateJob'
    onBeforeAction: (pause) ->
      job = Jobs.findOne _id: @params._id
      if job and (job.ownerId is Meteor.userId()) 
        return true

      Meteor.call 'popupError', '這不是您張貼的職缺'
      Router.go 'index'
      
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


  @route 'space',
    path: '/space/:_id'
    template: 'spaceDetail'
    data: ->
      space: => Space.findOne _id: @params._id

  @route 'updateSpace',
    path: '/update-space/:_id'
    template: 'updateSpace'
    data: ->
      space: => Space.findOne _id: @params._id



  @route 'memberPost',
    path: '/memberPost'
    onBeforeAction:(pause)->
      if not Meteor.user()
        if not Meteor.loggingIn()
          Router.go('/')
          pause()
  
    
  @route 'memberList',
    path: '/memberList'

