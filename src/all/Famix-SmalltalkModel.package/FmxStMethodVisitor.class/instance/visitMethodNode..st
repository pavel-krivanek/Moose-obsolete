visitor-double dispatching
visitMethodNode: aMethodNode 
	 
	importer importingContext shouldImportArgument 
		ifTrue: 
			[aMethodNode arguments 
				do: 
					[:aVariableNode | | argument | 
					argument := FmxStParameter new. 
					argument name: aVariableNode name asSymbol. 
					argument parentBehaviouralEntity: self methodEntity. 
					importer addEntity: argument. 
					methodScope 
						at: aVariableNode name 
						bind: argument]]. 
	self extractCommentsFromNode: aMethodNode.
	self visitNode: aMethodNode body. 
	aMethodNode pragmas
		do: [ :each | self visitNode: each ].
		
	"recognize getters/setters/constructors/..."
	self classifyMethodNode: aMethodNode