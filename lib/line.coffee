makeIdMap = require('../lib/ids').makeMap
loadLine = require('./line-file').loadLine

class Line
  constructor: (@name, loadedCallback) ->
    loadLine('district', (@line) =>
      @ids = makeIdMap(@line)
      @prepareJourneys();

      loadedCallback()
    )

  created: ->
    new Date(@line['@'].CreationDateTime)

  prepareJourneys: ->
    @journeys = []
    for vehicleJourney in @line.VehicleJourneys.VehicleJourney
      journey = {}

      journey.departureTime = {}
      [journey.departureTime.hour, journey.departureTime.minute, journey.departureTime.second] =
        vehicleJourney.DepartureTime.split(':')

      journey.journeyPattern = @ids[vehicleJourney.JourneyPatternRef]

      @journeys.push(journey)

module.exports = Line
