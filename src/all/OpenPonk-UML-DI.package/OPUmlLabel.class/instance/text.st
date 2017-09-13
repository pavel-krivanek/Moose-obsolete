accessing
text
	(text isNil or: [ text isString and: [ text isSymbol not ] ])
		ifTrue: [ ^ text ].
	^ text value: self modelElement