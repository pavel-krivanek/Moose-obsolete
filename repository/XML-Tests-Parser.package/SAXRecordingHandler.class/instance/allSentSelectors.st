accessing
allSentSelectors
	^ (self messageRecorder messagesCollect: [:each | each selector]) asArray