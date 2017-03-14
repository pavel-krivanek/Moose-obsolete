printing
mooseNameOn: aStream 
	self parameterizableClass notNil 
		ifTrue: [self parameterizableClass mooseNameOn: aStream].
	aStream nextPut: $<.
	self arguments 
		do: [:each | each mooseNameOn: aStream]
		separatedBy: [aStream nextPut: $,].  
	aStream nextPut: $>.  
