sorting
sort
	nodeSetSize > 1
		ifTrue: [
			self prescanNodesForSharedParent
				ifNil: [self sortVisitingAllNodes]
				ifNotNil: [:sharedParent |
					self sortVisitingNodesOfSharedParent: sharedParent]].
	nodeSet sortOrder: XPathDocumentSortOrder new.