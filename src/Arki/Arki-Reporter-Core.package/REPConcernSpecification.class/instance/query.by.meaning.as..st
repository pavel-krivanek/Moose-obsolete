concern building
query: aLabelString by: aStakeholderString meaning: aMeaningString as: aBlock
	^ self root addChild: 
		((REPCustomQueryConcern on: self model)
			computation: aBlock;
			label: aLabelString;
			stakeholderString: aStakeholderString;
			explanation: aMeaningString;
			yourself )