initialization
fromDebugAction: aDebugAction
	super fromDebugAction: aDebugAction.
	self infoAt: #selectionInterval put: aDebugAction debugger bytecodePresentation selection sourceInterval.
	self infoAt: #bytecodePosition put: (aDebugAction debugger currentContext method symbolicBytecodes
		indexOf: aDebugAction debugger bytecodePresentation selection ifAbsent: [-1]).