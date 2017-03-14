*XPath-Core-private
ancestorAxisSelect: aNodeTest into: aNodeSet
	self ancestorNodesDo: [:each |
		(aNodeTest value: each)
			ifTrue: [aNodeSet addLast: each]].
	^ aNodeSet.