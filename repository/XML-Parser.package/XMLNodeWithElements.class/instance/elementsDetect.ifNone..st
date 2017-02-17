enumerating
elementsDetect: aBlock ifNone: anExceptionBlock
	"returns the first element child of the receiver that aBlock evaluates
	true for or the value of anExceptionBlock if there isn't one"

	^ self nodes
		elementsDetect: aBlock
		ifNone: anExceptionBlock