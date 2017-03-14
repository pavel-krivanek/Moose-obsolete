concern building
query: aLabelString meaning: aMeaningString as: aBlock
	^ self root addChild: 
		((REPCustomQueryConcern on: self model)
			computation: aBlock;
			label: aLabelString;
			explanation: aMeaningString;
			yourself )