building
blockToGetParent: aBuildingBlock 
	"Builds the hierarchical graph based on the leaf entities and given block"
	| nodesToProcess |
	
	"Make sure leafs are set before calling this method."
	self assert: (nodes notEmpty) description: 'Base nodes have to be set before calling this method.'.
	
	nodesToProcess := Stack new.
	nodesToProcess addAll: nodes values.

	[nodesToProcess notEmpty] whileTrue:  [
		| node parentNode |
		
		node := nodesToProcess pop.
		
		parentNode := self setParentOfNode: node builder: aBuildingBlock.
		
		(parentNode notNil) ifTrue: [
			"Need to re-evaluate found parent"
			nodesToProcess push: parentNode.
		]
	].

	"After we have set up the hierarchy, we have to set the levels of the node(s), 
	so we can use this information when propagating relationships."
	self setLevels.