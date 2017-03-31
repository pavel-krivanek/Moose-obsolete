private
sortVisitingAllNodes
	nodeSetCollection first documentRoot allNodesDo: [:node |
		self visitNode: node.
		node isElement
			ifTrue: [
				(mustVisitNamespaces
					and: [node hasNamespaceNodes])
					ifTrue: [
						node namespaceNodesDo: [:each |
							self visitNode: each]].
				(mustVisitAttributes
					and: [node hasAttributes])
					ifTrue: [
						node attributeNodesDo: [:each |
							self visitNode: each]]].
		"can abort when every node in the node set has been visited"
		totalSorted = nodeSetSize
			ifTrue: [^ self]].

	"if we got here, then at least one node must not belong to the same
	document as the rest, because otherwise it would have been visited"
	self errorNodesLackSharedDocumentRoot.