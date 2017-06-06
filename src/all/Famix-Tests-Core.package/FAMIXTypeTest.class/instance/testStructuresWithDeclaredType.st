tests
testStructuresWithDeclaredType
	| type structure |
	type := self actualClass new.
	structure := FAMIXStructuralEntity new.
	structure declaredType: type.
	self assert: structure declaredType == type.
	self assert: type structuresWithDeclaredType size equals: 1.
	self assert: (type structuresWithDeclaredType includes: structure)