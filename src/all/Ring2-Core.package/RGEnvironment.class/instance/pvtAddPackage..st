private - backend interface
pvtAddPackage: anRGPackageDefinition

	self environment verifyOwnership: anRGPackageDefinition.
	
	packages isRingResolved ifFalse: [ 
		self pvtCleanPackages ].
	
	packages add: anRGPackageDefinition.	
		