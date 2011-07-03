fs = require('fs')

loadLine = (line, callback) ->
  fs.readFile(__dirname + "/../data/#{line}.json", (err, data) ->
    line = JSON.parse(data)
    callback(line)
  )

exports.loadLine = loadLine
