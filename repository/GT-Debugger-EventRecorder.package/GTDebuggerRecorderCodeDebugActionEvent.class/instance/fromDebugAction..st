initialization
fromDebugAction: aDebugAction
	super fromDebugAction: aDebugAction.
	self infoAt: #selectionInterval put: aDebugAction codePresentation selectionInterval.