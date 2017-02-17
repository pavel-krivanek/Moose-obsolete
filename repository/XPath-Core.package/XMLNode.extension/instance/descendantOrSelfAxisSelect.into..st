*XPath-Core-private
descendantOrSelfAxisSelect: aNodeTest into: aNodeSet
	(aNodeTest value: self)
		ifTrue: [aNodeSet addLast: self].
	^ aNodeSet.