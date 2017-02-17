adding
add: anObject

	(anObject isKindOf: FAMIXInvocation)
		ifTrue: [ invocationStorage add: anObject ]
		ifFalse: [ storage add: anObject ]