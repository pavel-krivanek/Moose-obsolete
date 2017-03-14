*XPath-Core-private
precedingAxisSelect: aNodeTest ifNotPresentInto: aNodeSet
	self precedingNodesDo: [:each |
		((aNodeSet includes: each) not
			and: [aNodeTest value: each])
			ifTrue: [aNodeSet addLast: each]].
	^ aNodeSet.