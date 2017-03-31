*XPath-Core-private
ancestorOrSelfAxisSelect: aNodeTest into: aNodeSet
	self withAncestorNodesDo: [:each |
		(aNodeTest value: each)
			ifTrue: [aNodeSet addLast: each]].
	^ aNodeSet.