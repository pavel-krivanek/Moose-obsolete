private - backend interface
pvtPackage: anRGPackageDefinition

	self environment verifyOwnership: anRGPackageDefinition.

	^ package := anRGPackageDefinition