inferring
inferElementType
	
	| candidates |
	candidates := elements asSet.
	candidates size = 1 ifTrue: [ ^candidates anyOne ].
	^#Object.