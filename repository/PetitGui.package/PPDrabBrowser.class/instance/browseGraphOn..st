browse-static
browseGraphOn: aBrowser
	aBrowser morph
		title: 'Graph';
		useExplicitNotNil;
		display: [ :parsers |
			| morph |
			morph := ScrollPane new.
			morph color: Color white.
			morph scroller addMorph: self production morphicProduction.
			morph ]