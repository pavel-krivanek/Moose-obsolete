*XPath-Core-private
precedingAxisSelect: aNodeTest into: aNodeSet
	self precedingNodesDo: [:each |
		(aNodeTest value: each)
			ifTrue: [aNodeSet addLast: each]].
	^ aNodeSet.