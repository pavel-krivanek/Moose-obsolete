helpers
originalClassOf: mutatedObject

	| mutation |
	mutation := self mutationOf: mutatedObject.
	
	^mutation victimClass