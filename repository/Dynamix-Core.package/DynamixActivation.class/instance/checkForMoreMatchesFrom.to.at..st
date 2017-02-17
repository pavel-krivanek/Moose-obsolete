compressing
checkForMoreMatchesFrom: aCandidateSequence to: aOriginalList at: checkPosition
	| currentPosition originalStartPosInList  |
		originalStartPosInList := checkPosition - ( aCandidateSequence size).
		currentPosition := checkPosition.
		"While not finished checking original sequence "
		[ currentPosition - 1 + aCandidateSequence size < aOriginalList size ] 
			whileTrue: [( self compare: aCandidateSequence with: aOriginalList from: currentPosition ) 
							ifTrue: [ (aOriginalList at: originalStartPosInList) sequence: (((aOriginalList at: originalStartPosInList) sequence) + 1 ).
									  (currentPosition = originalStartPosInList) 
										ifFalse: [(aOriginalList at: currentPosition) setNotdisplayable.].
										currentPosition := currentPosition + aCandidateSequence size.
									]
						].
		^currentPosition