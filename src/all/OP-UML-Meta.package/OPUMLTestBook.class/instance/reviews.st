accessing
reviews
	^ reviews ifNil: [ reviews := OPUMLToManyLinks on: self opposite: #book: ]