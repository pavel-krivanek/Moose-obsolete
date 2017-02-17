accessing
classHistories
	
	classHistories isNil
		ifTrue:
			[classHistories := self referenceHistory allClassHistories
				select: [:each | each belongsTo = self]].
	^classHistories