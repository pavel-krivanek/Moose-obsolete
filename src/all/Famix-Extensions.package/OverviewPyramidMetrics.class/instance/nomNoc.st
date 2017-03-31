accessing - metrics ratio
nomNoc
	"Class structuring (NOM/Class). Reveals how operations are dirstributed among classes"
	
	^ self noc isZero 
		ifTrue: [ ^ -1 ]
		ifFalse: [ 
			self truncatedFloatForFraction: (self nom / self noc) ]