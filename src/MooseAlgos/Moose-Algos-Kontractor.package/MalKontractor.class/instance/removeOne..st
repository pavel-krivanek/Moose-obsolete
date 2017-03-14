computing
removeOne: aString

	| comp note currentNote value |
	comp := 1.
	note := 0.
	[ comp <= aString size ] whileTrue: [
		currentNote := self letterFrequency: (aString copyFrom: comp to: comp). 
		(currentNote > note ) ifTrue: [
					note := currentNote.
					value := comp].  
	comp := comp + 1].
	^ aString copyWithoutIndex: value.