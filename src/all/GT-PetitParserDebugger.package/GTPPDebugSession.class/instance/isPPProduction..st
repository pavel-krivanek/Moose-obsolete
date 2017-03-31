testing
isPPProduction: anObject 

	^ (anObject class includesBehavior: PPDelegateParser ) and: [ 
			anObject name notNil ]
	