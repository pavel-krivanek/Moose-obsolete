positioning
fillNewlines
	| tmp line |
	newlines := OrderedCollection new.	
	
	tmp := position.
	line := 0.
	
	(0 to: readLimit) do: [:index |
		position := index.
		self isStartOfLine ifTrue: [ newlines add: position ]
	].
	position := tmp.
	newlines := newlines asArray.
	^ newlines