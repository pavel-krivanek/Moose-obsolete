tests
testPiecesCutWhereCamelCase

	self assert: ('' piecesCutWhereCamelCase) isEmpty.
	self assert: ('fBar' piecesCutWhereCamelCase) asArray  = #('f' 'Bar').
	self assert: ('fooBar' piecesCutWhereCamelCase) asArray  = #('foo' 'Bar').
	self assert: ('FOOBar') piecesCutWhereCamelCase asArray = #('FOO' 'Bar').
	self assert: ('fooBar1' piecesCutWhereCamelCase) asArray  = #('foo' 'Bar' '1').
	self assert: ('FOOBar12AndSomething') piecesCutWhereCamelCase asArray = #('FOO' 'Bar' '12' 'And' 'Something').