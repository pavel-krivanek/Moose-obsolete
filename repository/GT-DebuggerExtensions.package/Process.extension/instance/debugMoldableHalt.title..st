*GT-DebuggerExtensions
debugMoldableHalt: context title: title

	^ (Smalltalk tools debuggerDispatcherFor: context) ifNotNilDo: [ :aDebugger | 
		UIManager default  
			openDebugger: aDebugger
			initializedWith: [  ]
			on: self 
			context: context 
			label: title 
			contents: nil 
			fullView: true ]