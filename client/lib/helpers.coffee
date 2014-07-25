UI.registerHelper 'salaryLowerBound', ->
    parseInt(@salaryLowerBound / 1000) + 'K'

UI.registerHelper 'salaryUpperBound', ->
    parseInt(@salaryUpperBound / 1000) + 'K'
