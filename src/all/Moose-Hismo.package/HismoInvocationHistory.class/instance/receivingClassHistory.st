public interface
receivingClassHistory
	
	receivingClassHistory isNil
		ifTrue:
			[receivingClassHistory := self first receivingClass isNil
				ifTrue: [nil]
				ifFalse:
					[(self referenceHistory allClassHistories
						select: [:each | each mooseName = self first receivingClass asSymbol])
						first]].
	^receivingClassHistory