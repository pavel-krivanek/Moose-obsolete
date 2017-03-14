*petitgui-accessing
exampleOn: aStream
	"Perform the minimal repeatitions required, and a random amount of more if possible and if not that much output has been produced yet."
	
	min timesRepeat: [ 
		super exampleOn: aStream ].
	(max - min min: 5) atRandom timesRepeat: [
		aStream position > 512
			ifTrue: [ ^ self ].
		super exampleOn: aStream ]