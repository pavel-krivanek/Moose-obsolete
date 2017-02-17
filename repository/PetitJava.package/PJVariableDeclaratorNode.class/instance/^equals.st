comparing
= anotherNode
	(self == anotherNode) ifTrue: [  ^ true ].
	(anotherNode class == self class) ifFalse: [ ^ false].
	
	(self variable = anotherNode variable) ifFalse: [ ^ false ].
	(self arrayLevel = anotherNode arrayLevel) ifFalse: [ ^ false ].
	"
		uncomment when all the comparisons are read ...
	(self initializer = anotherNode initializer) ifFalse: [ ^ false ].
	"
	
	^ true