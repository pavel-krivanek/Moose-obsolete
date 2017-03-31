private
terminalStateCollectionWith: aFirstState and: aSecondState
	^ (OrderedCollection new: 4)
		addLast: aFirstState;
		addLast: aSecondState;
		yourself