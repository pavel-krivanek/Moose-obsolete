*XPath-Core-private
descendantOrSelfAxisSelect: aNodeTest at: aPosition into: aNodeSet
	(aPosition = 1
		and: [aNodeTest value: self])
		ifTrue: [aNodeSet addLast: self].
	^ aNodeSet.