private
updateLabel: order with: value
	| label |
	label := order ifTrue: [ cursorMin ] ifFalse: [ cursorMax ].
	(label attributes includesKey: #RTLabelledLabel) 
		ifTrue: [label := label attributeAt: #RTLabelledLabel.]
		ifFalse: [ ^ self ].
	labelled ifTrue: [ 
		label text: (useIntegerLabel 
			ifTrue: [ (value round: 0) asInteger]
			ifFalse: [ value round: 2 ] ) asString. ]