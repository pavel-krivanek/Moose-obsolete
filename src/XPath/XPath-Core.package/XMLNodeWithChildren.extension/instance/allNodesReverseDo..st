*XPath-Core-enumerating
allNodesReverseDo: aBlock
	self hasChildren
		ifTrue: [self nodes reverseDo: [:each | each allNodesReverseDo: aBlock]].
	aBlock value: self.