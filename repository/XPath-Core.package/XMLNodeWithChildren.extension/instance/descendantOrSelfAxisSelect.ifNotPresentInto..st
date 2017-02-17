*XPath-Core-private
descendantOrSelfAxisSelect: aNodeTest ifNotPresentInto: aNodeSet
	self allNodesDo: [:each |
		((aNodeSet includes: each) not
			and: [aNodeTest value: each])
			ifTrue: [aNodeSet addLast: each]].
	^ aNodeSet.