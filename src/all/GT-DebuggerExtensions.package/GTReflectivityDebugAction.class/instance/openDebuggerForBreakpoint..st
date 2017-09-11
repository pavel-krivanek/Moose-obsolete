opening
openDebuggerForBreakpoint: aBreakpoint
	"FIX ME: consider moving this method to the actual breakpoint 
	so that actions become more lighweight"
	|ctxt|
	ctxt := thisContext.
	
	UIManager default 
		debugProcess: Processor activeProcess 
		context: (aBreakpoint instrumentationContextFrom: ctxt)
		label: (self debuggerData at: #title)
		fullView: true 
		notification: nil 
		usingDebuggerClass: self debuggerClass
		initializedWith: [ :aDebugger | 
			"FIX ME: do not update the entire debugger. Instead have a hook for updating the 
			session before opening the debugger and one after to update the actual debugger."
			aBreakpoint updateDebuggingSession: aDebugger session.
			aDebugger updateBrowser. 
			aDebugger window 
				position: (self debuggerData at: #position);
				extent: (self debuggerData at: #extent) ]