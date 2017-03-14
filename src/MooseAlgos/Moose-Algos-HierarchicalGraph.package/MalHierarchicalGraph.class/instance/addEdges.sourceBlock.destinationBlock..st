building
addEdges: aCollection sourceBlock: srcBlock destinationBlock: dstBlock
	"Add given edges to the higraph.
	If through given edges new nodes are found, they are NOT added to the graph."
	| srcEntity dstEntity srcNode dstNode edge |
	aCollection do: [ :e | 
		
		"Get source and destination models."
		srcEntity := srcBlock value: e.
		dstEntity := dstBlock value: e.

		"Models should not be nil"
	      self assert: (srcEntity notNil and: dstEntity notNil) description: 'Models should never be nil. Check correctness of srcBlock and dstBlock.'.
			
		"Get nodes from entities"
		(nodes includesKey: srcEntity)
			ifTrue: [
				srcNode := nodes at: srcEntity.
			].
			
		(nodes includesKey: dstEntity)
			ifTrue: [
				dstNode := nodes at: dstEntity.
			].
		
		"Only create edge if nodes were found."
		(srcNode isNil or: dstNode isNil) ifFalse: [
			
			"Create an edge between the nodes and add it to the graph."
			edge := MalGraphEdge with: e from: srcNode to: dstNode.
			
			"Adding edge to the graphs edge collection"
			self edges add: edge.
			
			"Add edge references to the node themselves"
			srcNode addOutgoing: edge.
			dstNode addIncoming: edge.
		].
	].