building
setParentOfNode: aNode builder: buildingBlock
	"Gets parent of given node via blockToGetParent, and sets it - or adds node to root nodes, if there is no parent.
	Returns parent if one was found, nil else"
	| parentNode parentEntity rootNodes |

	"Get parent entity through blockToGetParent"
	parentEntity := buildingBlock value: aNode model.

	"If the entity has no parent, it is a rootNode"
	(parentEntity isNil) 
	ifTrue: [
		rootNodes := levels at: 0 ifAbsentPut: [ OrderedCollection new ].
		(rootNodes includes: aNode) ifFalse: [ rootNodes add: aNode ].
		^ nil.
	]
	ifFalse: [
		
		"Check if we already have the parent stored in the graph, if yes retrieve it, else store it."
		(nodes includesKey: parentEntity) 
			ifTrue: [
				parentNode := nodes at: parentEntity.
			]
			ifFalse: [
				parentNode := MalHgNode in: self with: parentEntity.
				nodes at: parentEntity put: parentNode.
			].
			
		"Add current node as child to parent"
		parentNode addChild: aNode.
			
		"Add parent to current node as parent"
		aNode parent: parentNode.

		"Return parent."
		^ parentNode.
	].