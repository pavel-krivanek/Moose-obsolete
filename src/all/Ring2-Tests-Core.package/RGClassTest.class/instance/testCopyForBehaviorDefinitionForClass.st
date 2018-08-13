tests
testCopyForBehaviorDefinitionForClass

	"test copying for instance variables from RGClass"
	
	| env aClass copy classVariable1 sharedPool sharedPool2 |
	
	env := RGEnvironment new.
	aClass := env ensureClassNamed: #SomeClass.
	sharedPool := env ensureClassNamed: #SomePool.
	sharedPool2 := env ensureClassNamed: #SomePool2.

	classVariable1 := RGClassVariable named: #ClassVariable1 parent: aClass.
	aClass addClassVariable: classVariable1.
	aClass addSharedPool: sharedPool.

	self assert: aClass sharedPools anyOne name equals: #SomePool.
		
	copy := aClass copyForBehaviorDefinition.

	classVariable1 name: #ChangedClassVariable1.
	aClass cleanSharedPools.
	aClass addSharedPool: sharedPool2.
	
	self deny: copy == aClass. 
	self assert: copy classVarNames asArray equals: #(ClassVariable1).
	self assert: (copy classVariables allSatisfy: [ :each | each parent == copy ]).
	
	self assert: copy sharedPools notEmpty.
	self assert: copy sharedPools anyOne name equals: #SomePool.