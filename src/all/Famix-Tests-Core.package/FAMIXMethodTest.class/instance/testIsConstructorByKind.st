testing
testIsConstructorByKind
	self assert: (self actualClass new kind: 'constructor'; isConstructor)