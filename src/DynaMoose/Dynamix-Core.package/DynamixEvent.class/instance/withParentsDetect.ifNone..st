enumerating
withParentsDetect: aBlock ifNone: anotherBlock
	"This traverses the parents including myself and stops when the first one matches aBlock.
	If none is found, we return the result of anotherBlock"
	
	self withAllParentsDo: [:each | 
		(aBlock value: each) ifTrue: [^ each] ].
	^ anotherBlock value