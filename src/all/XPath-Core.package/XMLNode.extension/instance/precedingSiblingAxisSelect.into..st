*XPath-Core-private
precedingSiblingAxisSelect: aNodeTest into: aNodeSet
	self precedingSiblingNodesDo: [:each |
		(aNodeTest value: each)
			ifTrue: [aNodeSet addLast: each]].
	^ aNodeSet.