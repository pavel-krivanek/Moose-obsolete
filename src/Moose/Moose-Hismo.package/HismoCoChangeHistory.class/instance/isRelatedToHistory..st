public interface
isRelatedToHistory: aHistory
	
	^self history1 = aHistory or: [self history2 = aHistory]