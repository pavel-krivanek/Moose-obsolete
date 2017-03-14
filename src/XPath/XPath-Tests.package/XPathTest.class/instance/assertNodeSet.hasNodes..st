asserting
assertNodeSet: aNodeSet hasNodes: aNodeCollection
	self
		assert: aNodeSet size = aNodeCollection size;
		assert: (aNodeCollection allSatisfy: [:each | aNodeSet includes: each])