public interface
accessesHistory
	
	accessesHistory isNil
		ifTrue:
			[| candidateList |
			candidateList := self referenceHistory allAttributeHistories
				select: [:each | each mooseName = self first accesses mooseName].
			accessesHistory := candidateList isEmpty
				ifFalse: [candidateList first]
				ifTrue: [nil]].
	^accessesHistory