testing
isSameMethodAs: aActivation 
	^ self method = aActivation method and: [ self parent = aActivation parent ]