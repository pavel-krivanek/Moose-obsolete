as yet unclassified
parseOn: aPPContext
	"This is optimized code that avoids unnecessary block activations, do not change. When all choices fail, the last failure is answered."

	| element limitResult memento |
	"self halt."
	1 to: parsers size do: [ :index |
		memento := aPPContext remember.
		
		element := (parsers at: index)
			parseOn: aPPContext.
		
		(element isPetitFailure not) ifTrue: [ 
			"check limit"
			limitResult := limit parseOn: aPPContext.
			limitResult isPetitFailure ifTrue: [ 
				element := PPFailure message: 'limit failed' at: aPPContext position .
				aPPContext restore: memento.
			] ifFalse: [ ^ element ].
		].
	].	
	^ element