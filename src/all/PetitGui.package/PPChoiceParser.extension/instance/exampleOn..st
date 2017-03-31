*petitgui-morphic
exampleOn: aStream
	"If there is already a lot written, try to pick an empty possiblity."
	
	aStream position > 512 ifTrue: [
		(parsers anySatisfy: [ :each | each isNullable ])
			ifTrue: [ ^ self ] ].
	parsers atRandom exampleOn: aStream