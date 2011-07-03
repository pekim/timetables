Line = require('../lib/line')

exports.load = (test) ->
  new Line('district', ->
    test.ok(true)
    
    test.done()
  )

exports.created = (test) ->
  line = new Line('district', ->
    test.strictEqual(line.created().getDate(), 23)
    
    test.done()
  )
