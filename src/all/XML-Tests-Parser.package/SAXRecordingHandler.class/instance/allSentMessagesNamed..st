accessing
allSentMessagesNamed: aName
	^ (self messageRecorder messagesSelect: [:each |
		each selector = aName asSymbol]) asArray