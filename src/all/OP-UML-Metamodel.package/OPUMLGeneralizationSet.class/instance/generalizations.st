accessing
generalizations
	"Designates the instances of Generalization that are members of this GeneralizationSet."
	^ generalizations ifNil: [ generalizations := OPUMLManyToManyLinks on: self identity opposite: #generalizationSets ]