testing
hasValidExtensions
	^ self hasExtensions not
		or: [ extensions allSatisfy: [ :each | 
				each notNil and: [ each isValid ] ] ]