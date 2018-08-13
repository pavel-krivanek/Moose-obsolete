tests
testCopyForBehaviorDefinition
	
	| env aClass copy |
	
	env := RGEnvironment new.
	aClass := env ensureClassNamed: #SomeClass.
	aClass superclass: (env ensureClassNamed: #SomeSuperclass).
	aClass tagWith: #tag1.
	aClass tagWith: #tag2.
		
	copy := aClass copyForBehaviorDefinition.
	
	self deny: copy == aClass. 
	self deny: copy superclass == aClass superclass. 
	self assert: copy superclass name equals: #SomeSuperclass.
	self assert: copy tags sorted equals: #(tag1 tag2).