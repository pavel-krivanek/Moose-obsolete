accessing
covereds
	"References the Lifelines that the InteractionFragment involves."
	^ covereds ifNil: [ covereds := OPUMLManyToManyLinks on: self identity opposite: #coveredBies ]