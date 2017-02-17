initialization
fromDebugAction: aDebugAction
	super fromDebugAction: aDebugAction.
	self infoAt: #selector put: aDebugAction selector.