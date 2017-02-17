*SmaCC_Debugging_Support
roassalView
	^ self roassalViewForStack: (stateStack ifNil: [ Array with: self class defaultStartingState ])