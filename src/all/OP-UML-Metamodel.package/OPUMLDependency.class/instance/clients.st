accessing
clients
	"The Element(s) dependent on the supplier Element(s). In some cases (such as a trace Abstraction) the assignment of direction (that is, the designation of the client Element) is at the discretion of the modeler and is a stipulation."
	^ clients ifNil: [ clients := OPUMLManyToManyLinks on: self identity opposite: #clientDependencies ]