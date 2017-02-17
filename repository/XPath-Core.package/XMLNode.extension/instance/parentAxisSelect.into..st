*XPath-Core-private
parentAxisSelect: aNodeTest into: aNodeSet
	(self hasParent
		and: [aNodeTest value: self parent])
		ifTrue: [aNodeSet addLast: self parent].
	^ aNodeSet.