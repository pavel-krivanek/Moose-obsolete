accessing
coveredBies
	"References the InteractionFragments in which this Lifeline takes part."
	^ coveredBies ifNil: [ coveredBies := OPUMLManyToManyLinks on: self identity opposite: #covereds ]