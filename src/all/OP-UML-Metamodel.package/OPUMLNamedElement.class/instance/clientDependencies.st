accessing
clientDependencies
	"Indicates the Dependencies that reference this NamedElement as a client."
	^ clientDependencies ifNil: [ clientDependencies := OPUMLManyToManyLinks on: self identity opposite: #clients ]