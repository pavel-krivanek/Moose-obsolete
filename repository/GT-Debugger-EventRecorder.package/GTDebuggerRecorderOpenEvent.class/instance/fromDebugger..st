initialization
fromDebugger: aDebugger

	self infoAt: #debuggerClass put: aDebugger class name.
	self addWindowHashFor: aDebugger.
	self addTitleFor: aDebugger.
	self addSourceFor: aDebugger.