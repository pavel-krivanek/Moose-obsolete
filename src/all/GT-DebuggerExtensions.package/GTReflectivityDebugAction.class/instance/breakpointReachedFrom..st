callbacks
breakpointReachedFrom: aBreakpoint
	"Callback method called when any one of the breakpoints installed 
	by this action is reached."

	self uninstallBreakpoints.
	self openDebuggerForBreakpoint: aBreakpoint