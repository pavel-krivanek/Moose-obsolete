accessing
packageHistories
	packageHistories isNil ifTrue: 
		[ packageHistories := self referenceHistory allPackageHistories select: [ :each | each parentPackage = self ] ].
	^ packageHistories