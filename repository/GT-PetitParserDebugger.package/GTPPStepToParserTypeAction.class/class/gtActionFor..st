registration
gtActionFor: aDebugger
	<gtPPDebuggingAction>
	<gtContextPPDebuggingAction>
	|order|
	
	order := 300.
	^ self parserTypes collect: [ :each |
		(self forDebugger: aDebugger)
			parserClass: each;
			label: each name;
			category: 'Next parser type';
			order: (order := order + 1) ]