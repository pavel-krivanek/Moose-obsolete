accessing
generalizations
	"The Generalization relationships for this Classifier. These Generalizations navigate to more general Classifiers in the generalization hierarchy."
	^ generalizations ifNil: [ generalizations := OPUMLToManyLinks on: self identity opposite: #specific: ]