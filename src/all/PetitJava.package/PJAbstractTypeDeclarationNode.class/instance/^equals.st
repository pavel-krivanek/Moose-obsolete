comparing
= anotherNode
	(self == anotherNode) ifTrue: [  ^ true ].
	(anotherNode class == self class) ifFalse: [ ^ false].

	^ (self simpleName = anotherNode simpleName)