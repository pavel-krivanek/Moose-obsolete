wrapping
wrap: aText to: maxWidth
	"This is a naive brute-force implementation of line-wrapping algorithm.

	There is also TxAthensCharacterWrappingStrategy that is more advanced, but requires the use of 	TxModel/Spans, etc."

	| string words lineWidth lines line ww |
	shouldWrap
		ifFalse: [ ^ aText ].
	string := aText copyReplaceAll: String cr with: ' '.
	words := string splitOn: ' '.
	lineWidth := 0.
	lines := OrderedCollection new.
	line := OrderedCollection new.
	lines add: line.
	words
		do: [ :word | 
			ww := font widthOfString: word.
			lineWidth = 0
				ifTrue: [ line add: word.
					lineWidth := lineWidth + ww ]
				ifFalse: [ ww + lineWidth > maxWidth
						ifTrue: [ lineWidth := 0.
							line := OrderedCollection new.
							lines add: line ].
					line add: word.
					lineWidth := lineWidth + ww ] ].
	^ (lines collect: [ :each | each joinUsing: ' ' ]) joinUsing: String cr