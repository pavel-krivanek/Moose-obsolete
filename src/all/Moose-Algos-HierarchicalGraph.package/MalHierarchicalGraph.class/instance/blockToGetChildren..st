building
blockToGetChildren: aBuildingBlock 
	"Builds the hierarchical graph based on root entities and given block"
	| rootNodes nodesToProcess |

	"Make sure base entities are set before calling this method."
	self assert: (nodes notEmpty) description: 'Base nodes have to be set before calling this method.'.
	
	"If this method is called we know that we are in top down building mode, 
	this means all given base nodes are root nodes (level 0)."
	rootNodes := self nodes asOrderedCollection.
	rootNodes do: [ :n | n level: 0 ].
	levels at: 0 put: rootNodes.

	nodesToProcess := Stack new.
	nodesToProcess addAll: rootNodes.

	[nodesToProcess notEmpty] whileTrue:  [
		| node childrenNodes |
		
		node := nodesToProcess pop.
		
		childrenNodes := self setChildrenOfNode: node builder: aBuildingBlock.
		
		(childrenNodes notEmpty) ifTrue: [
			
			"Need to re-evaluate found children"
			childrenNodes do: [ :childNode | 
				nodesToProcess push: childNode.
			].
		]
	].