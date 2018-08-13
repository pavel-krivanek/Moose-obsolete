traits
traitCompositionString

	^ String streamContents: [:aStream |	
		aStream 
			nextPutAll: self subject name traitTransformationString;
			space;
			nextPut: $-;
			space;
			nextPut: ${.
	self exclusions do: [:each | aStream print: each]
		separatedBy: [aStream nextPutAll: '. '].
	aStream nextPut: $}].