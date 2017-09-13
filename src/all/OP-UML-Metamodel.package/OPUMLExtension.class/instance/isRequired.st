operations
isRequired
	"The query isRequired() is true if the owned end has a multiplicity with the lower bound of 1."
	
	"{OCL} result = (ownedEnd.lowerBound() = 1)"
	
	^ self ownedEnd lowerBound = 1
