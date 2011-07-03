loadLine = require('./line-file').loadLine

class Line
  constructor: (@name, loadedCallback) ->
    loadLine('district', (@line) =>
      loadedCallback()
    )

  created: ->
    new Date(@line['@'].CreationDateTime)

module.exports = Line
