*XPath-Core-private
followingAxisSelect: aNodeTest ifNotPresentInto: aNodeSet
	self followingNodesDo: [:each |
		((aNodeSet includes: each) not
			and: [aNodeTest value: each])
			ifTrue: [aNodeSet addLast: each]].
	^ aNodeSet.