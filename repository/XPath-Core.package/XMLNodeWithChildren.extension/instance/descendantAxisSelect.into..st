*XPath-Core-private
descendantAxisSelect: aNodeTest into: aNodeSet
	self descendantNodesDo: [:each |
		(aNodeTest value: each)
			ifTrue: [aNodeSet addLast: each]].
	^ aNodeSet.