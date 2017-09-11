*GT-DebuggerExtensions
debugProcess: process context: context label: title fullView: bool notification: notificationString usingDebuggerClass: debuggerClass initializedWith: aBlock
	"Open a notifier in response to an error, halt, or notify. A notifier view
	just shows a short view of the sender stack and provides a menu that
	lets the user open a full debugger."

	| debugSession |

	debugSession := debuggerClass sessionClass named: title on: process startedAt: context.
	
	debugSession logStackToFileIfNeeded.
	debugSession isAboutUIProcess ifTrue: [ self spawnNewProcess  ].
		
	self defer:	[ 
			"schedule debugger in deferred UI message to address
			redraw problems after opening a debugger e.g. from
			the testrunner."
		[ debuggerClass 
				openOn: debugSession withFullView: bool notification: notificationString initializedWith: aBlock.
		] on: Error do: [ :ex | 	debugSession signalDebuggerError: ex] 
	].

	process suspend.
