accessing
fragments
	"The fragments of the operand."
	^ fragments ifNil: [ fragments := OPUMLToManyLinks on: self identity opposite: #enclosingOperand: ]