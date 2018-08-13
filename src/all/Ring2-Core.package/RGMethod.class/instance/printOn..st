printing
printOn: aStream 

	self parent name ifNotNil: [
		aStream nextPutAll: self parent name;
				  nextPutAll: '>>' ].
	aStream print: self selector