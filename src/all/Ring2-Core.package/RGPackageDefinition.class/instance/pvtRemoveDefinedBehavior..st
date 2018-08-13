private - backend interface
pvtRemoveDefinedBehavior: anRGBehavior

	self environment verifyOwnership: anRGBehavior.
	
	definedBehaviors remove: anRGBehavior.
	
	"TODO:Announce"
	
	