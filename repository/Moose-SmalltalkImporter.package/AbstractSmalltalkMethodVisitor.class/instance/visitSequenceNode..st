visitor-double dispatching
visitSequenceNode: aSequenceNode 
	"self visitArguments: aSequenceNode temporaries." 
	 
	| local | 
	importer importingContext shouldImportLocalVariable 
		ifTrue: 
			[aSequenceNode temporaries 
				do: 
					[:aVariableNode |  
					local := FAMIXLocalVariable new. 
					local name: aVariableNode name asSymbol. 
					local parentBehaviouralEntity: self methodEntity. 
					importer addEntity: local. 
					methodScope 
						at: aVariableNode name 
						bind: local]]. 
	self extractCommentsFromNode: aSequenceNode. 
	aSequenceNode statements do: [:each | self visitNode: each]