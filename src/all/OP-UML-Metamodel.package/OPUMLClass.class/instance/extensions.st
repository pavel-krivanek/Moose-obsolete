accessing
extensions
	"This property is used when the Class is acting as a metaclass. It references the Extensions that specify additional properties of the metaclass. The property is derived from the Extensions whose memberEnds are typed by the Class."
	^ extensions ifNil: [ extensions := OPUMLToManyLinks on: self identity opposite: #metaclass: ]