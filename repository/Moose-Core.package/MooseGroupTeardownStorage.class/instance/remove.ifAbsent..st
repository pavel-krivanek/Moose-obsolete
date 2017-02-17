removing
remove: anElement ifAbsent: exceptionBlock
	| index |
	index := (elements findFirst: [ :each | anElement = each ]) index isZero
		ifTrue: [ exceptionBlock value ].
	elements at: index put: Tombstone.
	tally := tally - 1.
	^ anElement