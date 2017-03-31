instance creation
atReferenceVersion: aVersion withHistory: aHistory
	
	^(self new)
		referenceVersion: aVersion;
		history: aHistory;
		yourself