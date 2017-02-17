compressing
checkChildrenForSequence: aList 
	| length i j startpos |
	length := aList size.
	length < 2 ifTrue: [^self].
	i := 1.
	j := 2.
	startpos := i.
	[j <= length] whileTrue: 
			[((aList at: i) isSameMethodAs: (aList at: j)) 
				ifFalse: 
					[j - startpos > 1 
						ifTrue: 
							[(aList at: startpos) sequence: j - i.
							startpos := j.
							i := startpos]
						ifFalse: 
							[i := i + 1.
							startpos := i]]
				ifTrue: [ (aList at: j ) sequence: 1.
						   (aList at: j) setSubtreeNotDisplayable ].
			j := j + 1].

	j - i > 1 ifTrue: [(aList at: startpos) sequence: j - i]