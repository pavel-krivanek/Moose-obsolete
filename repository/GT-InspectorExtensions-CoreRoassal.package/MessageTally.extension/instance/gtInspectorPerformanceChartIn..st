*GT-InspectorExtensions-CoreRoassal
gtInspectorPerformanceChartIn: composite
	<gtInspectorPresentationOrder: 40>
	| metric |
	metric := #localTally.
	^ composite roassal2
		title: 'Top tallies';
		initializeView: [ RTDoubleBarBuilder new ];
		painting: [ :builder :presentation |
			GTInspectorMessageTallyCharter new 
				performanceOf: self 
				with: builder
				in: presentation ];
		when: [ self children notEmpty ]