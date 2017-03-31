tests
testNamespaceReification 
	 
	self model allClasses 
		do: [:each | self assert: (each belongsTo isKindOf: FAMIXNamespace)]