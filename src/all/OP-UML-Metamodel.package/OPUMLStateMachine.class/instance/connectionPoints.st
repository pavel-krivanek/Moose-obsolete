accessing
connectionPoints
	"The connection points defined for this StateMachine. They represent the interface of the StateMachine when used as part of submachine State"
	^ connectionPoints ifNil: [ connectionPoints := OPUMLToManyLinks on: self identity opposite: #stateMachine: ]