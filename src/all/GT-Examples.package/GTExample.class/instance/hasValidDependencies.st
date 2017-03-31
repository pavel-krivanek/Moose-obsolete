testing
hasValidDependencies
	^ self hasValidArguments 
		and: [ self hasDependencies not
			or: [ self dependencies allSatisfy: [ :each | 
				each notNil and: [ each exists ] ] ] ]