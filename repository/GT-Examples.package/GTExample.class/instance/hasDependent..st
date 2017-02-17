testing
hasDependent: anExample
	^ self directDependents anySatisfy: [ :each | each matchesExample: anExample ]