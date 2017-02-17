private
sortVisitingNodesOfSharedParent: aParent
	"all nodes in the node set have the same parent, so only its
	namespaces and attributes (if any are in the node set) and
	children need to be visited"
	mustVisitNamespaces
		ifTrue: [aParent namespaceNodesDo: [:each | self visitNode: each]].
	mustVisitAttributes
		ifTrue: [aParent attributeNodesDo: [:each | self visitNode: each]].
	aParent hasChildren
		ifTrue: [aParent nodesDo: [:each | self visitNode: each]].