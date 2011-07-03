ids = require('../lib/ids')

exports.idsMap = (test) ->
  object = 
    a: [
      {'@': {id: 'a1'}}
      {'@': {id: 'a2'}}
    ]
    b: {'@': {id: 'b'}}

  map = ids.makeMap(object)

  test.ok(map.a1)
  test.ok(map.a2)
  test.ok(map.b)

  test.done()
