accessing
regions
	"The Regions owned directly by the StateMachine."
	^ regions ifNil: [ regions := OPUMLToManyLinks on: self identity opposite: #stateMachine: ]