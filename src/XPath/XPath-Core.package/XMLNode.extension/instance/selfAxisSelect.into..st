*XPath-Core-private
selfAxisSelect: aNodeTest into: aNodeSet
	(aNodeTest value: self)
		ifTrue: [aNodeSet addLast: self].
	^ aNodeSet.