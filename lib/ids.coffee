addIdsToMap = (map, object) ->
  if object['@']
    if object['@'].id
      map[object['@'].id] = object

  if object instanceof Array
    for item in object
      addIdsToMap(map, item)
    
  else if object instanceof Object
    for name, value of object
      addIdsToMap(map, value)

exports.makeMap = (object) ->
  map = {}

  addIdsToMap(map, object)

  return map
