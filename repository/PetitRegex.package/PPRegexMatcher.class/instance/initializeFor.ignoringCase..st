initialization
initializeFor: aParser ignoringCase: aBoolean
	parser := aParser.
	ParserValidator execute: parser.
	aBoolean ifTrue: [
		parser := parser transform: [ :each |
			(each respondsTo: #caseInsensitive)
				ifTrue: [ each caseInsensitive ]
				ifFalse: [ each ] ] ].
	(parser respondsTo: #optimize)
		ifTrue: [ parser := parser optimize ]