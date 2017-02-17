browse
browseDynamicOn: aBrowser
	| tabulator |
	aBrowser useExplicitNotNil.
	
	tabulator := aBrowser tabulator.
	tabulator
		title: 'Dynamic';
		useExplicitNotNil;
		row: #input; row: #output.
	tabulator transmit
		to: #input;
		andShow: [ :a | self browseInputOn: a ].
	tabulator transmit
		to: #output;
		from: #input;
		andShow: [ :a | self browseOutputOn: a ].
		
	tabulator transmit
		from: #output;
		to: #input->#selectionInterval;
		when: [ :selection | selection notNil ];
		transformed: [ :selection | selection second to: selection third ]
