*XPath-Core-private
descendantAxisSelect: aNodeTest ifNotPresentInto: aNodeSet
	self descendantNodesDo: [:each |
		((aNodeSet includes: each) not
			and: [aNodeTest value: each])
			ifTrue: [aNodeSet addLast: each]].
	^ aNodeSet.