instance creation
withHistory: aHistory withAnotherHistory: anotherHistory
	
	^(self new)
		history1: aHistory;
		history2: anotherHistory;
		yourself