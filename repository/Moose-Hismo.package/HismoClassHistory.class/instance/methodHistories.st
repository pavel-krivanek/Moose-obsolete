accessing
methodHistories
	
	methodHistories isNil
		ifTrue:
			["		methodHistories := self computeSubHistories: MethodHistory new computedForEachVersionAs: [:version | version methodDict] withDescription: 'Method Histores from ', self uniqueName, ' Class History'."
			methodHistories := self referenceHistory allMethodHistories
				select: [:each | each belongsTo = self]].
	^methodHistories