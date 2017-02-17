*XPath-Core-private
parentAxisSelect: aNodeTest at: aPosition into: aNodeSet
	(aPosition = 1
		and: [self hasParent
			and: [aNodeTest value: self parent]])
		ifTrue: [aNodeSet addLast: self parent].
	^ aNodeSet.