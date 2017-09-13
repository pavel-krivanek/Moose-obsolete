accessing
variables
	"The Variables defined in the scope of the StructuredActivityNode."
	^ variables ifNil: [ variables := OPUMLToManyLinks on: self identity opposite: #scope: ]