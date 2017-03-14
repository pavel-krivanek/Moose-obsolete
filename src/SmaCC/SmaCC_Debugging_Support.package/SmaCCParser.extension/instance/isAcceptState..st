*SmaCC_Debugging_Support
isAcceptState: stateIndex
	self
		allActionsAndSymbolsForState: stateIndex
		do: [ :action :symbol | 
			action = self acceptAction
				ifTrue: [ ^ true ] ].
	^ false