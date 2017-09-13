accessing
ends
	"A set of ConnectorEnds that attach to this ConnectableElement."
	^ ends ifNil: [ ends := OPUMLToManyLinks on: self identity opposite: #role: ]