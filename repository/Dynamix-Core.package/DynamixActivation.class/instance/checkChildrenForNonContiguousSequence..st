compressing
checkChildrenForNonContiguousSequence: aList
"This is the algoritm"
	| maxlen i checkpos len found candidateSequence |
	found := false.
	len := aList size.
	i := 1.
	maxlen := (len/2) asInteger.
	[i < (len - 1 )]  whileTrue:[
		checkpos := i + 1. "start checking by comparing with element offset by one"
		candidateSequence := OrderedCollection new.
		candidateSequence addLast: (aList at: i). " set  the first element of a candidate sequence"
		[ checkpos < ( i + maxlen) and: [found not ] ] whileTrue: [
			((aList at: i ) isSameMethodAs: (aList at: checkpos)) 
				ifTrue: [ found := true.]
				ifFalse: [ candidateSequence addLast: (aList at:checkpos).
						    checkpos := checkpos + 1].
				].
				found 
					ifTrue: [ (aList at: i) sequence: 1. "Mark the first occurance"
							   (aList at: i) seqitemsAddList: candidateSequence.
							   i := self checkForMoreMatchesFrom: candidateSequence to: aList at: checkpos.
							   maxlen := ((len + 1 ) / 2) asInteger. ]
					ifFalse: [ i := i + 1.
							    maxlen := ((len - 1) / 2 ) asInteger.].
		]