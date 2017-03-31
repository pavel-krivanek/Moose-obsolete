*XPath-Core-private
followingSiblingAxisSelect: aNodeTest into: aNodeSet
	self followingSiblingNodesDo: [:each |
		(aNodeTest value: each)
			ifTrue: [aNodeSet addLast: each]].
	^ aNodeSet.