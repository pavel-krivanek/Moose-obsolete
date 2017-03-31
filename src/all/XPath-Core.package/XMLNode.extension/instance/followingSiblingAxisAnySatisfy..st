*XPath-Core-private
followingSiblingAxisAnySatisfy: aNodeTest
	self followingSiblingNodesDo: [:each |
		(aNodeTest value: each)
			ifTrue: [^ true]].
	^ false.