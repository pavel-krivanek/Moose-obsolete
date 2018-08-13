accessing
methods
	"Retrieves all the methods defined in the receiver. 
	#methods holds the methods of defined classes"
	
	^ (self definedBehaviors flatCollect: #methods), self extensionMethods 