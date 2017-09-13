accessing
qualifiers
	"An optional list of ordered qualifier attributes for the end."
	^ qualifiers ifNil: [ qualifiers := OPUMLToManyLinks on: self identity opposite: #associationEnd: ]