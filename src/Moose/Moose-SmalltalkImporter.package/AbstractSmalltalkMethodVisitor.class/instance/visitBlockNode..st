visitor-double dispatching
visitBlockNode: aBlockNode 
	 
	| local | 
	importer importingContext shouldImportLocalVariable 
		ifTrue: 
			[aBlockNode arguments 
				do: 
					[:aVariableNode |  
					local := FAMIXLocalVariable new. 
					local name: aVariableNode name asSymbol. 
					local parentBehaviouralEntity: self methodEntity. 
					importer addEntity: local. 
					methodScope 
						at: aVariableNode name 
						bind: local]]. 
	self extractCommentsFromNode: aBlockNode.	"self visitArguments: aBlockNode arguments." 
	self visitNode: aBlockNode body