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



  @route 'link3',
    path: '/link3'
    template: 'link3'
