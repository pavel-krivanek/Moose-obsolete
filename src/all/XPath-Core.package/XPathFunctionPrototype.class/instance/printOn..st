printing
printOn: aStream
	super printOn: aStream.
	aStream
		nextPut: $(;
		nextPutAll: self returnType name;
		space;
		nextPutAll: self name;
		nextPut: $(.
	self argumentTypes withIndexDo: [:each :i |
		i > 1
			ifTrue: [aStream nextPutAll: ', '].
		aStream nextPutAll: each name.
		i > self minArguments
			ifTrue: [
				self maxArguments
					ifNil: [aStream nextPut: $*]
					ifNotNil: [aStream nextPut: $?]]].
	aStream nextPutAll: '))'.