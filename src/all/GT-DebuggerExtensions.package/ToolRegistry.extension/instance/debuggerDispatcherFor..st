*GT-DebuggerExtensions
debuggerDispatcherFor: context
	^ self debuggerDispatcherFor: context matching: [ :aDebugger | true ].
	