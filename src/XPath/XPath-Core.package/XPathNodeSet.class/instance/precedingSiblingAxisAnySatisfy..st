private
precedingSiblingAxisAnySatisfy: aNodeTest
	self do: [:each |
		(each precedingSiblingAxisAnySatisfy: aNodeTest)
			ifTrue: [^ true]].
	^ false.