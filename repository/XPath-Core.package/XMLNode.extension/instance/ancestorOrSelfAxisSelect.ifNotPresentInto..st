*XPath-Core-private
ancestorOrSelfAxisSelect: aNodeTest ifNotPresentInto: aNodeSet
	self withAncestorNodesDo: [:each|
		((aNodeSet includes: each) not
			and: [aNodeTest value: each])
			ifTrue: [aNodeSet addLast: each]].
	^ aNodeSet.