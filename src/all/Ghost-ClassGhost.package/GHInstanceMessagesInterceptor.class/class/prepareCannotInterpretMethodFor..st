simulation trick
prepareCannotInterpretMethodFor: selector
"I should prepare special method to simulate support behaviour of debugger to step into method which receiver class was proxified. Which means that step into should reflect cannotInterpret: trick"
	| numArgs methodName method copy |
	numArgs := selector numArgs.
	methodName := 'cannotInterpretMethodForSelector'.
	
	numArgs timesRepeat: [methodName := methodName, 'with:'].
	methodName := methodName asSymbol.
	
	method := self compiledMethodAt: methodName ifAbsent: [ ^self error: 'Please implement method ', methodName, ' on instance side for new num args'].

	copy := method copy.
	copy propertyValueAt: #canNotInterpretSelector put: selector.
	^copy