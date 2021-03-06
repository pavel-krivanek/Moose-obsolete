running
checkMethod: aContext

	| class compiledMethod pragma |
	class := aContext methodClass.
	compiledMethod := class methodNamed: aContext selector.
	(pragma := compiledMethod pragmaAt: #MSEProperty:type:opposite:) 
		ifNotNil: [
			|oppositeClass oppositeSelector oppositeCompiledMethod|
			oppositeClass := Smalltalk classNamed: (pragma argumentAt: 2) asString.
			oppositeClass ifNil: [^ self].
			oppositeSelector := (pragma argumentAt: 3) .
		
			oppositeCompiledMethod := oppositeClass methodDict at: oppositeSelector ifAbsent: [result addClass: class  selector: aContext selector. ^self].
			pragma := (oppositeCompiledMethod pragmaAt: #MSEProperty:type:opposite:)
				ifNil: [ result addClass: class  selector: aContext selector. ^self ].
			
			(pragma argumentAt: 2) = class name asSymbol
				ifFalse: [ result addClass: class  selector: aContext selector. ^self ].
			(pragma argumentAt: 3) = aContext selector
				ifFalse: [ result addClass: class  selector: aContext selector. ^self ] ]
	 
	