accessing
parameterSets
	"The ParameterSets containing the parameter. See ParameterSet."
	^ parameterSets ifNil: [ parameterSets := OPUMLManyToManyLinks on: self identity opposite: #parameters ]