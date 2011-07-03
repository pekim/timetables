sys = require('sys')
fs = require('fs')
xml2js = require('xml2js')

parser = new xml2js.Parser()

parser.addListener('end', (result) ->
	console.log(JSON.stringify(result))
)

fs.readFile(__dirname + '/district.xml', (err, data) ->
	parser.parseString(data)
)
