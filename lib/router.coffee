Router.configure
  layoutTemplate: 'layout'


Router.map ->

  @route 'index',
    path: '/'
    template: 'index'

  @route 'link1',
    path: '/link1'
    template: 'link1'
  
  @route 'coworking',
    path: '/coworking'
    template: 'coworking'

  @route 'link3',
    path: '/link3'
    template: 'link3'
