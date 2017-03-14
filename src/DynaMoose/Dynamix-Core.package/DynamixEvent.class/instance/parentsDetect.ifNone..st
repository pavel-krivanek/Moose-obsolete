enumerating
parentsDetect: aBlock ifNone: anotherBlock
	"This traverses the parents and stops when the first one matches aBlock.
	If none is found, we return the result of anotherBlock"
	
	self allParentsDo: [:each | 
		(aBlock value: each) ifTrue: [^ each] ].
	^ anotherBlock value