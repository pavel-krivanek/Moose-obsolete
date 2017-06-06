construction
removeDescendant: aCollection
	descendants ifNotEmpty: [ aCollection do: [ :aNode | descendants remove: aNode ] ]