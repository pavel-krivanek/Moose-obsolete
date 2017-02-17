reference model access
testAccessingGlobalVariableFromInstanceSide
	| declaredType |
	self
		privateTestAccessingVar: #Transcript
		from: #'Smalltalk::TheRoot.accessingGlobalVariableFromInstanceSide()'
		shouldBeRead: true
		hasAccessesSize: 1.
	declaredType := (self model allGlobalVariables entityNamed: #Transcript) declaredType.
	self assert: declaredType mooseName equals: Transcript class mooseName.
	self assert: (declaredType isKindOf: FAMIXType)