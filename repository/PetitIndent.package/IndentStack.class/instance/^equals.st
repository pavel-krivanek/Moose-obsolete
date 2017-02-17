comparison
= anotherStack
	self == anotherStack ifTrue: [ ^ true ].
	self contents = anotherStack contents ifTrue: [ ^ true ].
	
	^ false