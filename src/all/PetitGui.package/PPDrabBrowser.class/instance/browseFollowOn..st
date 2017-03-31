browse-static
browseFollowOn: aBrowser
	aBrowser list
		title: 'Follow';
		useExplicitNotNil;
		format: [ :parser | parser displayName ];
		display: [ :parsers | 
			| parser |
			parser := self selectedClass new.
			parser followSets
				at: (parser productionAt: self selectedSelector)
				ifAbsent: [ Array with: nil asParser ] ]