initialization
fromDebugAction: aDebugAction
	self infoAt: #debugActionClass put: aDebugAction class name.
	self infoAt: #methodClass putHashForText: aDebugAction currentContext methodClass name.
	self infoAt: #methodSelector putHashForText: aDebugAction currentContext methodSelector.
	self infoAt: #pc put: aDebugAction currentContext pc.
	self infoAt: #nextInstruction putHashForText: aDebugAction currentContext peekInstruction asString.
	self addWindowHashFor: aDebugAction debugger.