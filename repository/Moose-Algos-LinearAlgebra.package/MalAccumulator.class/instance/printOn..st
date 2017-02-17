printing
printOn: stream
	
	| method |
	method := accumulateBlock method outerMethod.
	stream
		nextPutAll:
				(method mclass == MalAccumulator class
						ifTrue: [method selector]
						ifFalse: ['custom']);
		space;
		nextPut: $=;
		space;
		print: value