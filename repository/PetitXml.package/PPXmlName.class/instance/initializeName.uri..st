initialization
initializeName: aString uri: anUrl
	| index |
	(index := aString indexOf: $:) = 0
		ifTrue: [ 
			prefix := nil.
			local := aString ]
		ifFalse: [
			prefix := aString copyFrom: 1 to: index - 1.
			local := aString copyFrom: index + 1 to: aString size ].
	uri := anUrl