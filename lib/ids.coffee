# Add any @.id to the map, and traverse any children.
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

# Build a map (object) of any IDs found in an object or its descendants.
#
# An ID is a member called '@' that itself has a member called 'id'.
# The value of the 'id' member is a key, and the value is the object that '@' is
# a member of.
exports.makeMap = (object) ->
  map = {}

  addIdsToMap(map, object)

  return map
