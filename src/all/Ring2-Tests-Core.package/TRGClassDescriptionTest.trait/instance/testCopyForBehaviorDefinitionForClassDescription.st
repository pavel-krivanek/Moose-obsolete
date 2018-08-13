tests
testCopyForBehaviorDefinitionForClassDescription
	
	| env aClass copy |
	
	env := RGEnvironment new.
	aClass := env ensureClassNamed: #SomeClass.
	aClass layout: (RGByteLayout parent: aClass).
		
	copy := aClass copyForBehaviorDefinition.
	
	self deny: copy == aClass. 
	self deny: copy layout == aClass layout. 
	self assert: copy layout isByteLayout.
	self assert: (copy layout parent == copy).