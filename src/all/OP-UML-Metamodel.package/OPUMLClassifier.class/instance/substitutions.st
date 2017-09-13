accessing
substitutions
	"The Substitutions owned by this Classifier."
	^ substitutions ifNil: [ substitutions := OPUMLToManyLinks on: self identity opposite: #substitutingClassifier: ]