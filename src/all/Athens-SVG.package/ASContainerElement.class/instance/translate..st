translate
translate: node
	super translate: node.
	children := node nodes asArray
		select: [ :each | each isStringNode not ]
		thenCollect: [ :child | 
			| nodeClass |
			nodeClass := ASVGNodeClasses fromName: child name.
			nodeClass new
				parent: self;
				translate: child;
				yourself ]