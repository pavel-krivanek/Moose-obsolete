accessing
books
	^ books ifNil: [ books := OPUMLManyToManyLinks on: self opposite: #authors ]