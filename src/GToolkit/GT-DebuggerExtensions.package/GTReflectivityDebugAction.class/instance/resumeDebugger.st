actions
resumeDebugger

	self saveDebuggerData.
	self session 
		resume;
		clear.
	self debugger close. 