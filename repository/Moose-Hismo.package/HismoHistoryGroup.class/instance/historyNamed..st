public interface
historyNamed: aName
	
	^self
		at: aName
		ifAbsentPut: [self createEmptyHistory]