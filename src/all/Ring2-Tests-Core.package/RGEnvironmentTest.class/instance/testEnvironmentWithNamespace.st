tests
testEnvironmentWithNamespace

	| newEnvironment newPackage|
	
	newEnvironment := RGEnvironment named: 'Testing environment'.
	
	self assert: (newEnvironment isRingResolved).
	
	newPackage := RGPackageDefinition named: 'Collections-Sequenceable'.
	
	self assert: (newPackage isRingResolved).
	self deny: (newPackage isRingFullyResolved).
	self deny: (newPackage isRingFullyUnresolved).
	newPackage cleanDefinedBehaviors.
	newPackage cleanExtensionMethods.
	newPackage cleanTagsForClasses.
	self assert: (newPackage isRingResolved).
	self assert: (newPackage isRingFullyResolved).
	self deny: (newPackage isRingFullyUnresolved).
	
	self should: [newEnvironment addPackage: newPackage] raise: RGWrongEnvironment.