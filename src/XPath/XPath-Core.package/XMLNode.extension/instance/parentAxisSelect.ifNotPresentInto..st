*XPath-Core-private
parentAxisSelect: aNodeTest ifNotPresentInto: aNodeSet
	(self hasParent
		and: [(aNodeSet includes: self parent) not
			and: [aNodeTest value: self parent]])
		ifTrue: [aNodeSet addLast: self parent].
	^ aNodeSet.