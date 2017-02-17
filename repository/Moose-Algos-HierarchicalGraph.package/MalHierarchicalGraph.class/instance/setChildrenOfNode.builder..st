building
setChildrenOfNode: aNode builder: buildingBlock
	"Gets children of given node via buildingBlock and sets them.
	Returns a collection with found children or an empty one if no children were found."
	| children currentLevel childrenEntities childNode |

	self assert: (self rootNodes notEmpty) description: 'There must be at least one root node set before calling this method.'.
		
	"Get children entities via blockToGetChildren"
	childrenEntities := buildingBlock value: aNode model.
	children := OrderedCollection new.

	"If the entity has no children it is a leaf and we return an empty collection."
	(childrenEntities isNil)
		ifTrue: [ ^ children. ]
		
		"Else we add found children to the graph."
		ifFalse: [
			
			currentLevel := aNode level.

			"Go through all found children..."
			childrenEntities do: [ :childEntity | 
		
				"Check if we already have the child stored in the graph, if yes retrieve it, else store it."
				(nodes includesKey: childEntity) 
				ifTrue: [
					childNode := nodes at: childEntity.
				]
				"Else ceate new child node."
				ifFalse: [
					childNode := MalHgNode in: self with: childEntity level: currentLevel + 1.
					nodes at: childEntity put: childNode.
				].
			
				"Add given node as parent to child."
				childNode parent: aNode.
			
				"Add child to given node."
				aNode addChild: childNode.
			
				"Add node to found children."
				children add: childNode.
			].
		
			"Need to add children to correct level in the higraph."
			levels at: (currentLevel + 1)
				ifPresent: [ :collection | collection addAll: children ] 
				ifAbsent: [ levels at: (currentLevel + 1) put: children ].
	
			^ children.
		].