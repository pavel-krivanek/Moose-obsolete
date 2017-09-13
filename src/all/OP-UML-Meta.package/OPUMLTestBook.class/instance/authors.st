accessing
authors
	^ authors ifNil: [ authors := OPUMLManyToManyLinks on: self opposite: #books ]