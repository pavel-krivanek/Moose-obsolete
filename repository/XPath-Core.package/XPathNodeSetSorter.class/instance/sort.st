sorting
sort
	nodeSetSize > 1
		ifTrue: [
			self prescanNodesForSharedParent
				ifNil: [self sortVisitingAllNodes]
				ifNotNil: [:parent | self sortVisitingNodesOfSharedParent: parent]].
	nodeSet sortOrder: XPathDocumentSortOrder new.