tests
testClassModifiers	
	self model allClasses 
		do: [:each | self assert: (each modifiers isKindOf: Set)].