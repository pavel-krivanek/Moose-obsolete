accessing
classHistories
	classHistories isNil ifTrue: 
		[ classHistories := self referenceHistory allClassHistories select: [ :each | each parentPackage = self ] ].
	^ classHistories