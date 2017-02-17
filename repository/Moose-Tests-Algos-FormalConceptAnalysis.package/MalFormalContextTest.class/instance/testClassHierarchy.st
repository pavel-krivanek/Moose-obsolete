tests
testClassHierarchy
	| fca |
	fca := MalFormalContext classHierarchy: Integer withAllSubclasses.
	self assert: fca concepts size equals: 5.
	self assert: (fca concepts select: [ :each | each attributes isEmpty ]) size equals: 0.
	self assert: (fca concepts select: [ :each | each objects isEmpty ]) size equals: 1