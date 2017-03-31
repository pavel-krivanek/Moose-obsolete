instance creation
withHistory: aHistory1 withAnotherHistory: aHistory2 withRespectToVersion: aVersion
	
	^(self new)
		referenceVersion: aVersion;
		history1: aHistory1;
		history2: aHistory2;
		yourself