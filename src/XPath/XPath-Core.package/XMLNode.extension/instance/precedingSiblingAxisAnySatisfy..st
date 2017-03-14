*XPath-Core-private
precedingSiblingAxisAnySatisfy: aNodeTest
	self precedingSiblingNodesDo: [:each |
		(aNodeTest value: each)
			ifTrue: [^ true]].
	^ false.