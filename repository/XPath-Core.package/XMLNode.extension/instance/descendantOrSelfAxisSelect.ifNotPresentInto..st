*XPath-Core-private
descendantOrSelfAxisSelect: aNodeTest ifNotPresentInto: aNodeSet
	((aNodeSet includes: self) not
		and: [aNodeTest value: self])
		ifTrue: [aNodeSet addLast: self].
	^ aNodeSet.