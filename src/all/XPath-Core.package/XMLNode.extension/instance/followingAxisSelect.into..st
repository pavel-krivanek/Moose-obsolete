*XPath-Core-private
followingAxisSelect: aNodeTest into: aNodeSet
	self followingNodesDo: [:each |
		(aNodeTest value: each)
			ifTrue: [aNodeSet addLast: each]].
	^ aNodeSet.