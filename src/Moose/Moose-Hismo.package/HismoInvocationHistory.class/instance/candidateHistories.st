public interface
candidateHistories
	
	candidateHistories isNil
		ifTrue:
			[candidateHistories := self first candidates
				collect:
					[:eachCandidate | 
					(self referenceHistory allMethodHistories
						select: [:each | each mooseName = eachCandidate mooseName]) first]].
	^candidateHistories