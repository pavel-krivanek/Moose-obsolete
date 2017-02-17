*XPath-Core-private
descendantOrSelfAxisSelect: aNodeTest into: aNodeSet
	self allNodesDo: [:each |
		(aNodeTest value: each)
			ifTrue: [aNodeSet addLast: each]].
	^ aNodeSet.