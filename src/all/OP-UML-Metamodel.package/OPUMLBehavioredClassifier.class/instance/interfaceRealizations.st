accessing
interfaceRealizations
	"The set of InterfaceRealizations owned by the BehavioredClassifier. Interface realizations reference the Interfaces of which the BehavioredClassifier is an implementation."
	^ interfaceRealizations ifNil: [ interfaceRealizations := OPUMLToManyLinks on: self identity opposite: #implementingClassifier: ]