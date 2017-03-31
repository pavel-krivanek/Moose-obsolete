removing
pop
	contents isEmpty ifTrue: [ ^ PPFailure message: 'cannot pop an empty stack' ].
	^ contents removeLast