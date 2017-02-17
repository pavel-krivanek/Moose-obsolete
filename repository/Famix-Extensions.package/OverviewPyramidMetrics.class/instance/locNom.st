accessing - metrics ratio
locNom

	"Operation Structuring (LOC/Operation). Indication of how well the code is distributed among operations"
	^ self nom isZero 
		ifTrue: [ ^ -1 ]
		ifFalse: [ 
			self truncatedFloatForFraction: (self loc/self nom) ]