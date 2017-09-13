accessing
memberEnds
	"Each end represents participation of instances of the Classifier connected to the end in links of the Association."
	^ memberEnds ifNil: [ memberEnds := OPUMLToManyLinks on: self identity opposite: #association: ]