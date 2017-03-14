middle-phase
hasOneAncestor: aNode WhichIs: aTop	
		"Is ancestor of an aNode the top node and is this the only ancestor of this node"
		
		|myAncestors|
		myAncestors := self allAncestors: aNode.
		
		^ ((myAncestors size =1) and: [myAncestors includes: aTop]) 