callbacks
updateDebuggingSession: aSession forBreakpoint: aBreakpoint
	"I update the session based on the breakpoint that was reached.
	Subclasses that want to provide custom update for the session
	should override me."
	aBreakpoint updateDebuggingSession: aSession