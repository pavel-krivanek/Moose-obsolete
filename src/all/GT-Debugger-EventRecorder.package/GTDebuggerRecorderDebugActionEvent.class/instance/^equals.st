comparing
= otherGTDebuggerRecorderDebugActionEvent
	^ (super = otherGTDebuggerRecorderDebugActionEvent)
		and: [ self isExecuted = otherGTDebuggerRecorderDebugActionEvent isExecuted ]