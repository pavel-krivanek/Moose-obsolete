browse-static
browseExampleOn: aBrowser
	aBrowser text
		title: 'Example';
		useExplicitNotNil;
		display: [ :parsers | self production example ]