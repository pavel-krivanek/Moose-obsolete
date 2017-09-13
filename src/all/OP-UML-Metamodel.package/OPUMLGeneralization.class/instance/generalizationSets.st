accessing
generalizationSets
	"Represents a set of instances of Generalization.  A Generalization may appear in many GeneralizationSets."
	^ generalizationSets ifNil: [ generalizationSets := OPUMLManyToManyLinks on: self identity opposite: #generalizations ]