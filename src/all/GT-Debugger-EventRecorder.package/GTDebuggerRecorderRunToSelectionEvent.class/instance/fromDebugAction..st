initialization
fromDebugAction: aDebugAction
	super fromDebugAction: aDebugAction.
	self infoAt: #selectionInterval put: aDebugAction debugger code getSelection.