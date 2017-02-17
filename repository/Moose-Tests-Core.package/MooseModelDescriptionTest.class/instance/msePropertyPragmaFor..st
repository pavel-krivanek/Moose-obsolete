running
msePropertyPragmaFor: aMethod
	^ aMethod pragmas detect: [:p | p keyword = #MSEProperty:type:opposite:] ifNone: [ nil ]