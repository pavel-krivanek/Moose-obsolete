accessing
handlers
	"A set of ExceptionHandlers that are examined if an exception propagates out of the ExceptionNode."
	^ handlers ifNil: [ handlers := OPUMLToManyLinks on: self identity opposite: #protectedNode: ]