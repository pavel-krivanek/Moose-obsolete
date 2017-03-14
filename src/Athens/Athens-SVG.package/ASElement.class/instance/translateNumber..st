translate
translateNumber: aString 

	^ (ASConverter new stream: aString readStream ) nextNumber 
