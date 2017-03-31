private
sortVisitingNodesOfSharedParent: aSharedParent
	"all nodes in the node set have the same parent, so only its
	namespaces and attributes (if any are in the node set) and
	children need to be visited"
	mustVisitNamespaces
		ifTrue: [
			aSharedParent namespaceNodesDo: [:each |
				self visitNode: each]].
	mustVisitAttributes
		ifTrue: [
			aSharedParent attributeNodesDo: [:each |
				self visitNode: each]].
	aSharedParent hasChildren
		ifTrue: [
			aSharedParent nodesDo: [:each |
				self visitNode: each]].