private - backend interface
pvtRemoveBehavior: anRGBehavior

	self verifyOwnership: anRGBehavior.
	
	behaviors remove: anRGBehavior.
	
	"TODO:Announce"
	
	