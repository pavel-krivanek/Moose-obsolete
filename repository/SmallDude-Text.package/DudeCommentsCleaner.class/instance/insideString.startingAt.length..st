private
insideString: aString startingAt: index length: length 
	 
	| front back | 
	front := aString sliceFrom: 1 to: index. 
	back := aString sliceFrom: index + length. 
	front := front replaceAllRegex: sRegex with: ''. 
	back := back replaceAllRegex: sRegex with: ''. 
	((front indexOfSubCollection: '"' startingAt: 1) > 0 
		and: [(back indexOfSubCollection: '"' startingAt: 1) > 0]) 
		ifTrue: [^True] 
		ifFalse: [^False]