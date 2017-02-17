actions
saveDebuggerData

	self debuggerData at: #title put: self debugger title.
	self debuggerData at: #position put: self debugger window position.
	self debuggerData at: #extent put: self debugger window extent.