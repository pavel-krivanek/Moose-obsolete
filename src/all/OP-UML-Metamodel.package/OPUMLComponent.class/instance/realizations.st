accessing
realizations
	"The set of Realizations owned by the Component. Realizations reference the Classifiers of which the Component is an abstraction; i.e., that realize its behavior."
	^ realizations ifNil: [ realizations := OPUMLToManyLinks on: self identity opposite: #abstraction: ]