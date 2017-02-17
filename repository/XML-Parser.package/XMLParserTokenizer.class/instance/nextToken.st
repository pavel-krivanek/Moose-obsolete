tokenizing
nextToken
	(streamReader atEnd
		and: [context isInitializedContext])
		ifTrue: [^ self nextEndDocument].
	context nextTokenFrom: self.