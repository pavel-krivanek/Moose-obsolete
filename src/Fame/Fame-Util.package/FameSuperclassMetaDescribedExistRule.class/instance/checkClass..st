running
checkClass: aContext
| class pragmas pragma substrings metaSuperclassName |

	class := aContext.
	pragmas := Pragma allNamed: #MSEClass:super: in: class.
	pragmas ifEmpty: [ ^ self ].
	pragmas size > 1 ifTrue: [ result addClass: class. ^ self ].
	
	pragma := pragmas first.
	metaSuperclassName := pragma argumentAt: 2.
	substrings := metaSuperclassName asString  substrings: #($.).
	
	substrings size > 1
		ifTrue: [
			Smalltalk at: (substrings first, substrings second) asSymbol  ifAbsent: [result addClass: class classSide selector: #annotation]
			]
		ifFalse: [
			Smalltalk at: substrings first asSymbol ifAbsent: [result addClass: class classSide selector: #annotation
			].
	].
