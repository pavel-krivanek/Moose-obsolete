initialization
collectDataFrom: aDebugger
	self occupant: aDebugger;
		category: #gtdebugger;
		register;
		linkToDebugger: aDebugger;
		recordDebuggerOpenEventFor: aDebugger.
		
	aDebugger announcer announce: (GTGenericStackDebuggerSelectionChanged forDebugger: aDebugger).