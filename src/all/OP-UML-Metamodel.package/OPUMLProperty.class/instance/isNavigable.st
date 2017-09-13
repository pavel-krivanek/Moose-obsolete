operations
isNavigable
	"The query isNavigable() indicates whether it is possible to navigate across the property."
	
	"{OCL} result = (not classifier->isEmpty() or association.navigableOwnedEnd->includes(self))"
	
	^ owningClass isNotNil or: [ association navigableOwnedEnds includes: self ]
