visitor-double dispatching
visitMessageNode: aMessageNode 
	 
	| invocation | 
	importer importingContext shouldImportInvocation 
		ifTrue: 
			[invocation := FmxStInvocation new. 
			invocation sender: self methodEntity. 
			
			invocation signature: (FAMIXNameResolver signatureFromSmalltalkSelectorOn: aMessageNode selector).
			"invocation  
				setInvokes: 
					(FAMIXNameResolver signatureFromSmalltalkSelector: aMessageNode selector)." 
			aMessageNode receiver isVariable 
				ifTrue: 
					[invocation 
						receiver: (self resolve: aMessageNode receiver name)]. 
			"aMessageNode receiver isVariable 
				ifTrue: 
					[invocation 
						setReceivingVariable: (self resolve: aMessageNode receiver name)]. "
			aMessageNode selector == #subclassResponsibility 
				ifTrue: [self methodEntity isAbstract: true]. 
			importer addEntity: invocation]. 
	(aMessageNode isCascaded not or: [aMessageNode isFirstCascaded]) 
		ifTrue: [self visitNode: aMessageNode receiver]. 
	importer importingContext shouldImportArgument 
		ifTrue: [aMessageNode arguments do: [:each | self visitNode: each]]. 
	self extractCommentsFromNode: aMessageNode