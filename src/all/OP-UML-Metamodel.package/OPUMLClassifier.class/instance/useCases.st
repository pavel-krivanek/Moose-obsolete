accessing
useCases
	"The set of UseCases for which this Classifier is the subject."
	^ useCases ifNil: [ useCases := OPUMLManyToManyLinks on: self identity opposite: #subjects ]