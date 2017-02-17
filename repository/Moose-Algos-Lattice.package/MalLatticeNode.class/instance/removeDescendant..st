construction
removeDescendant: aCollection
	descendants isEmpty not ifTrue: [aCollection do:[:aNode | descendants remove: aNode]].
	