*XPath-Core-private
ancestorAxisSelect: aNodeTest ifNotPresentInto: aNodeSet
	self ancestorNodesDo: [:each |
		((aNodeSet includes: each) not
			and: [aNodeTest value: each])
			ifTrue: [aNodeSet addLast: each]].
	^ aNodeSet.