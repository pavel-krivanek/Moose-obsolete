*petitgui
gtAllParsersIn: composite
	<gtInspectorPresentationOrder: 50>

	composite roassal2
		title: 'Graph'; 
		initializeView: [ RTMondrian new ];
		painting: [ :view |
			self viewAllParsersOn: view.	
		].