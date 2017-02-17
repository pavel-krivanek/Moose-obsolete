public interface
subHistory
	
	subHistory isNil
		ifTrue:
			[subHistory := self referenceHistory allClassHistories
				detect: [:each | each mooseName = self first subclass mooseName]
				ifNone: [nil]].
	^subHistory