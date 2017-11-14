tokenizing
nextToken
	(streamReader atEnd
		and: [state isInitializedState])
		ifTrue: [^ self nextEndDocument].
	state nextTokenFrom: self.