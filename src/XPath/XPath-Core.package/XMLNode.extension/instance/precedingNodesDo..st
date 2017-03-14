*XPath-Core-enumerating
precedingNodesDo: aBlock
	self hasParent
		ifTrue: [| visitedSelf |
			visitedSelf := false.
			self parent nodes reverseDo: [:each |
				visitedSelf
					ifTrue: [each allNodesReverseDo: aBlock]
					ifFalse: [
						each = self
							ifTrue: [visitedSelf := true]]]]