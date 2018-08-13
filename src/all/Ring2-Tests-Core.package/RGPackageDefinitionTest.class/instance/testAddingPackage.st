testing
testAddingPackage
"	| newPackage childPackage |
	
	newPackage:= RGPackageDefinition named: #'Collections'.
	newPackage addPackageNamed: #'Collections-Sequenceable'.
		
	self assert: (newPackage includesPackageNamed: #'Collections-Sequenceable').
	self assert: newPackage packages size equals: 1.
	
	childPackage:= newPackage packageNamed: #'Collections-Sequenceable'.
	self assert: (childPackage parent = newPackage parent).
	self assert: (childPackage package = newPackage)."