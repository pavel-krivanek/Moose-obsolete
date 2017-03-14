initialization
fromDebugAction: aDebugAction
	self flag: 'Find a better way to get type of action'.
	super fromDebugAction: aDebugAction.
	self infoAt: #glamourActionTitle put: aDebugAction asGlamourAction title.
	self infoAt: #selectionInterval put: aDebugAction debugger selectionInterval.