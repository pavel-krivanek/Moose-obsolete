parsing
parse: aAnnotationString andStoreTo: aSourceCodeLine inModel: aModel 
	 
	| spaces authorName | 
	spaces := ' 	'. 
	aAnnotationString size = 33 
		ifTrue: 
			[aSourceCodeLine 
				modifyedVersion: 
					((aAnnotationString sliceTo: 12) trimCharacters: spaces). 
			authorName := (aAnnotationString sliceFrom: 15 to: 22) trimCharacters: 
					spaces. 
			aSourceCodeLine 
				modifyingAuthor: (DudeDeveloper new name: authorName; mooseModel: aModel; yourself). 
			aSourceCodeLine 
				modificationDate: 
					(self 
						parseDate: 
							((aAnnotationString sliceFrom: 24 to: 32) trimCharacters: spaces))]. 
	^aSourceCodeLine