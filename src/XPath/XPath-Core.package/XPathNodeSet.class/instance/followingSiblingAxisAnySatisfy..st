private
followingSiblingAxisAnySatisfy: aNodeTest
	self do: [:each |
		(each followingSiblingAxisAnySatisfy: aNodeTest)
			ifTrue: [^ true]].
	^ false.