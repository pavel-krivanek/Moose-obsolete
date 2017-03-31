public interface
superHistory
	
	superHistory isNil
		ifTrue:
			[superHistory := self referenceHistory allClassHistories
				detect: [:each | each mooseName = self first superclass mooseName]
				ifNone: [nil]].
	^superHistory