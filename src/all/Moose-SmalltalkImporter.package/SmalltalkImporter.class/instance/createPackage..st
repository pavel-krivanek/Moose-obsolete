private-entity-creation
createPackage: aPackageModel
	
	| package |
	package := packages
		at: aPackageModel
		put: FAMIXPackage new.
	package name: aPackageModel name.
	package stub: true.
	^package