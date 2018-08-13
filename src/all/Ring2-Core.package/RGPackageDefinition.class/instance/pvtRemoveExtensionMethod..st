private - backend interface
pvtRemoveExtensionMethod: anRGMethod

	self environment verifyOwnership: anRGMethod.
	
	extensionMethods remove: anRGMethod.
	
	"TODO:Announce"
	
	