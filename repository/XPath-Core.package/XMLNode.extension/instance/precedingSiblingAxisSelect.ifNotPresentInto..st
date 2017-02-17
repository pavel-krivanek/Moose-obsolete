*XPath-Core-private
precedingSiblingAxisSelect: aNodeTest ifNotPresentInto: aNodeSet
	self precedingSiblingNodesDo: [:each |
		((aNodeSet includes: each) not
			and: [aNodeTest value: each])
			ifTrue: [aNodeSet addLast: each]].
	^ aNodeSet.