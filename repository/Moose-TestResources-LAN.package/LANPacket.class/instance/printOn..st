printing
printOn: aStream 
	 
	super printOn: aStream. 
	self originator notNil 
		ifTrue: 
			[aStream nextPutAll: ' coming from ' , self originator name printString]. 
	aStream 
		nextPutAll: 
			' addressed to ' , self addressee printString , ' with contents: ' 
				, self contents