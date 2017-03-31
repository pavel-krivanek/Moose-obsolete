compressing
compare: aCandidateSequence with: aList from: startpos
	| i j |
	i := startpos.
	j := 1.
	[ (j <= aCandidateSequence size) and: [ (aList at: i) isSameMethodAs: (aCandidateSequence at: j)]]
		whileTrue: [ i := i + 1.
					   j := j + 1 ].
	^(j - 1 = aCandidateSequence size)