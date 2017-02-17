as yet unclassified
newFrom: literalString
	| instanse |
	instanse := super new.
	instanse isLong: literalString last asUppercase = $L.
	instanse literalValue: (
		Integer readFromJavaString: (
			instanse isLong ifTrue: [ literalString allButLast ] ifFalse: [ literalString ])).
	^ instanse