private - backend interface
pvtRemovePackage: anRGPackageDefinition

	self verifyOwnership: anRGPackageDefinition.
	
	packages remove: anRGPackageDefinition.
	
	"TODO:Announce"
	
	