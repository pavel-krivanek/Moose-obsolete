private
containsComments: aString wasOpenComment: aBoolean 
	 
	| aTempString | 
	aTempString := '' , aString. 
	aTempString := aTempString replaceAllRegex: sRegex with: ''. 
	(aTempString indexOfSubCollection: sLineComments startingAt: 1) > 0 
		ifTrue: [^True]. 
	(aTempString indexOfSubCollection: sStartComment startingAt: 1) > 0 
		ifTrue: [^True]. 
	((aTempString indexOfSubCollection: sEndComment startingAt: 1) > 0 
		and: [aBoolean = True]) ifTrue: [^True]. 
	^False