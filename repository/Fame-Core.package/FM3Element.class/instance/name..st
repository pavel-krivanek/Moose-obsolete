accessing
name: aString
	
	name := aString isNil 
		ifTrue: [ nil ]
		ifFalse: [ aString asSymbol ].