browse-static
browseFirstOn: aBrowser
	aBrowser list
		title: 'First';
		useExplicitNotNil;
		format: [ :parser | parser displayName ];
		display: [ :parsers | self production firstSet ]