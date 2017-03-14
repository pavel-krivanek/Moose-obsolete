private
visitNode: aNode
	(nodeSetSet includes: aNode)
		ifTrue: [
			nodeSetCollection
				at: (totalSorted := totalSorted + 1)
				put: aNode]