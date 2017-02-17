comparing
= anotherNode
	(self == anotherNode) ifTrue: [  ^ true ].
	(self class == anotherNode class) ifFalse: [ ^ false].
	
	^ self fullyQualifiedName = anotherNode fullyQualifiedName 