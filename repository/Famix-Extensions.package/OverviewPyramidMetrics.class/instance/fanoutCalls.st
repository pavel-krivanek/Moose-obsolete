accessing - metrics ratio
fanoutCalls
	"Coupling dispersion (FANOUT/Operation Call). Indicator of how much the coupling involves many classes "
	
	^ self calls isZero 
		ifTrue: [ ^ -1 ]
		ifFalse: [ 
			self truncatedFloatForFraction: (self fanout / self calls) ]