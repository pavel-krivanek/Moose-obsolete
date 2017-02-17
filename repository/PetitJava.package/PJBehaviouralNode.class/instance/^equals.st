comparing
= anotherNode
	(self == anotherNode) ifTrue: [  ^ true ].
	(self class == anotherNode class) ifFalse: [ ^ false].

	(self returnType = anotherNode returnType) ifFalse: [ ^ false ].
	(self simpleName = anotherNode simpleName) ifFalse: [ ^ false ].
	"	
	Enable when PJParameterDeclarationNode comparison works
	(self parameters = anotherNode parameters) ifFalse: [ ^ false ].
	"

	^ true