instance creation
value: initialValue using: anAccumulationBlock
	
	^(self basicNew)
		setAccumulateBlock: anAccumulationBlock;
		resetValue: initialValue;
		yourself