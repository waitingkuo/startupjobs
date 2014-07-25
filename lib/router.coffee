Router.configure
  layoutTemplate: 'layout'


Router.map ->

  @route 'index',
    path: '/'
    template: 'index'

  @route 'link1',
    path: '/link1'
    template: 'link1'
  
  @route 'link2',
    path: '/link2'
    template: 'link2'

  @route 'link3',
    path: '/link3'
    template: 'link3'
