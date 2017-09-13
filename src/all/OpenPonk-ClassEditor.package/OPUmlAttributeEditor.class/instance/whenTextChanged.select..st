event handling
whenTextChanged: anInput select: aRadio
	anInput
		whenTextChanged: [ aRadio state
				ifFalse: [ aRadio toggleState ] ]