browse-static
browseCyclesOn: aBrowser
	aBrowser list
		title: 'Cycles';
		useExplicitNotNil;
		format: [ :parser | parser displayName ];
		display: [ :parsers | self production cycleSet ]