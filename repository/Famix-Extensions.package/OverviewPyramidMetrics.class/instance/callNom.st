accessing - metrics ratio
callNom
	" Coupling intensity (CALLS/Operation). Tell us how many other operations are called on average from each operation"
	^ self nom isZero 
		ifTrue: [ ^ -1 ]
		ifFalse: [ 
			self truncatedFloatForFraction: (self calls/ self nom) ]