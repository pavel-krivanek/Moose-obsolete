tests - new
testNewPackage
	| newPackage |
	
	newPackage := RGPackageDefinition named: 'Collections-Sequenceable'.
	
	self assert: (newPackage isRingResolved).
	
	self assert: (newPackage isPackage).
	self assert: (newPackage name = 'Collections-Sequenceable').

	newPackage name: 'NewCollections'.
	self assert: newPackage name equals: 'NewCollections'.

	self assert: (newPackage definedBehaviors isEmpty).
	self assert: (newPackage extensionMethods isEmpty).
	self assert: (newPackage hasUnresolvedAll: #(#definedBehaviors #extensionMethods)).
	
	newPackage cleanDefinedBehaviors.
	
	self assert: (newPackage hasUnresolved: #extensionMethods).
	self assert: (newPackage definedBehaviors isEmpty).
	self assert: (newPackage extensionMethods isEmpty).

	newPackage cleanExtensionMethods.
	newPackage cleanTagsForClasses.

	self assert: (newPackage unresolvedProperties isEmpty).
	self assert: (newPackage definedBehaviors isEmpty).
	self assert: (newPackage extensionMethods isEmpty).
	
	self assert: (newPackage isRingResolved).
	self assert: (newPackage isRingFullyResolved).
	self deny: (newPackage isRingFullyUnresolved).

	self assert: (newPackage package = newPackage).
	
		self assert: (newPackage traits isEmpty).
		
