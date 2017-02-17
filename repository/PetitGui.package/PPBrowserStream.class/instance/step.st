private
step
	positions addLast: position.
	stamps addLast: Time millisecondClockValue.
	(thisContext findContextSuchThat: [ :ctxt | ctxt receiver isKindOf: PPSea ])
		ifNotNil: [ :aContext | parsers addLast: aContext receiver ].