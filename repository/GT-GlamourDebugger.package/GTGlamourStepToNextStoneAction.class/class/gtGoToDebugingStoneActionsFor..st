registration
gtGoToDebugingStoneActionsFor: aDebugger
	<gtGlamourDebuggingAction>
	<gtContextGlamourDebuggingAction>
	
	^(PragmaCollector filter: [:prag | 
		prag keyword = self debuggingStonePragma ]) reset collected collect: [ :aPragma |
			(self forDebugger: aDebugger)
				label: (aPragma argumentAt: 2);
				"category: 'Debugging Stone';"
				debugStoneType: (aPragma argumentAt: 1) ]

	