as yet unclassified
newFrom: literalString
	| instanse |
	
	instanse := super new.
	instanse isFloat: literalString last asUppercase = $F.
	instanse literalValue: (instanse isFloat ifTrue: [ literalString allButLast ] ifFalse: [ literalString ]).
	^ instanse 