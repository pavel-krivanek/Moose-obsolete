*XPath-Core-enumerating
followingNodesDo: aBlock
	self hasParent
		ifTrue: [| visitedSelf |
			visitedSelf := false.
			self parent nodesDo: [:each |
				visitedSelf
					ifTrue: [each allNodesDo: aBlock]
					ifFalse: [
						each = self
							ifTrue: [visitedSelf := true]]]]