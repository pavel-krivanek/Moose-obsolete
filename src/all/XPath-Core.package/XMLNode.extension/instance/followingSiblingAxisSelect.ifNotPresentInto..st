*XPath-Core-private
followingSiblingAxisSelect: aNodeTest ifNotPresentInto: aNodeSet
	self followingSiblingNodesDo: [:each |
		((aNodeSet includes: each) not
			and: [aNodeTest value: each])
			ifTrue: [aNodeSet addLast: each]].
	^ aNodeSet.