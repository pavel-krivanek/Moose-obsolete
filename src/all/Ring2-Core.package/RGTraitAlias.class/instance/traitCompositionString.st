as yet unclassified
traitCompositionString

	^ String streamContents: [:aStream |	
		aStream 
			nextPutAll: self subject traitTransformationString;
			space;
			nextPut: $@;
			space;
			nextPut: ${.
	self aliases do: [:each | aStream print: each]
		separatedBy: [aStream nextPutAll: '. '].
	aStream nextPut: $}].