private
createEmptyHistory
	
	| history |
	history := self class new.
	history parentHistory: self.
	history referenceHistory: self referenceHistory.
	^history