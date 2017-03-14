testing
hasDependency: aGTExample
	^ self arguments anySatisfy: [ :each | each matchesMethod: aGTExample ]