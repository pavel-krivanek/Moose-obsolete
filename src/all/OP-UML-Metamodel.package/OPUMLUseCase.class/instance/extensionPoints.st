accessing
extensionPoints
	"The ExtensionPoints owned by this UseCase."
	^ extensionPoints ifNil: [ extensionPoints := OPUMLToManyLinks on: self identity opposite: #useCase: ]