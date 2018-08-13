testing
testAddingClass

	| newPackage newClass env |
	
	newPackage := RGPackageDefinition named: 'Collections-Sequenceable'.
	env := newPackage environment.
	newClass:= RGClass named: #OrderedCollection parent: env.
	
	self assert: (env ask packages notEmpty).
	
	newPackage addDefinedBehavior: newClass.
