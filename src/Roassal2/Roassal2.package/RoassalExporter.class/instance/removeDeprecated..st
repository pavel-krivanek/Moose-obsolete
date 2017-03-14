export
removeDeprecated: 	methodString
	| index res word index2 |
	word := 'self deprecated:'.
	index := methodString indexOfSubCollection: word.
	index = 0 ifTrue: [ ^ methodString ].
	index2 := methodString 
		indexOfSubCollection: '''.' 
		startingAt: index+word size 
		ifAbsent: [ self halt. ].
	res := (methodString copyFrom: 1 to: index - 1), 
		'"', (methodString copyFrom: index to: index2+1), '"',
		(methodString copyFrom: index2+2 to: methodString size).
	
	^ res
	