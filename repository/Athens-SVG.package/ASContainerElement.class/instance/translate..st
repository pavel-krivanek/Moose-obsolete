translate
translate: node
	super translate: node.
	
	children := (node nodesCollect: [:child |
		| nodeClass |
		nodeClass := ASVGNodeClasses fromName: child name.
	
		nodeClass new parent: self; translate: child; yourself	 ]) asArray