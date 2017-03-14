as yet unclassified
replace: child with: anotherChild
	child == waterToken  ifTrue: [ 
		waterToken := anotherChild
	].

	child == parser ifTrue: [ 
		parser := anotherChild
	]