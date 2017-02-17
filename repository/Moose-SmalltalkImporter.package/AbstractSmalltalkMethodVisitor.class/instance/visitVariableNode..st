visitor-double dispatching
visitVariableNode: aVariableNode 
	| access namedEntity global |
		
	importer importingContext shouldImportAccess ifTrue: 
		[ 
		"Warning! Smalltalk is both a Namespace and a GlobalVariable.
		By default the importer resolves Smalltalk to the namespace (for class and namespace creation).
		When we access Smalltalk as a variable, we create an access to the SmalltalkGlobalVariable instead"
		aVariableNode name = 'Smalltalk'
			ifTrue: [ 
				global := importer ensureGlobalVariable: #SmalltalkGlobalVariable value: Smalltalk.
				access := self createAccessTo: global writing: false]
			ifFalse: [
				namedEntity := self resolve: aVariableNode name.
				access := (namedEntity isKindOf: FAMIXContainerEntity)
					ifTrue: [ self createReferenceTo: namedEntity ]
					ifFalse: [ self createAccessTo: namedEntity writing: false ] ].
		importer addEntity: access ].
	self extractCommentsFromNode: aVariableNode