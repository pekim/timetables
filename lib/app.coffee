loadLine = require('./line-file').loadLine

loadLine('district', (line) ->
  stopPoints = line.StopPoints.AnnotatedStopPointRef
 	console.log(stopPoints.length)
)
