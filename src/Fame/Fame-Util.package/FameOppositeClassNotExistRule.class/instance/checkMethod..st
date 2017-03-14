running
checkMethod: aContext

	| class compiledMethod pragma |
	
	class := aContext methodClass.
	compiledMethod := class methodNamed: aContext selector.
	
	(pragma := compiledMethod pragmaAt: #MSEProperty:type:opposite:) 
		ifNotNil: [
			| oppositeClass |
			oppositeClass := Smalltalk classNamed: (pragma argumentAt: 2) asString.
			oppositeClass ifNil: [ result addClass: class  selector: aContext selector ] ]
	 
	