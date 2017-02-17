initialization
fromDebugAction: aDebugAction
	super fromDebugAction: aDebugAction.
	self infoAt: #debuggerClass put: aDebugAction debuggerClass name.
	aDebugAction newDebugger isNotNil ifTrue: [ self addNewWindowHashFor: aDebugAction newDebugger ]