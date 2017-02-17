private building
followIn: aBrowser
	aBrowser list
		title: 'Follow';
		useExplicitNotNil;
		format: [ :parser | parser displayName ];
		display: [ :class :productionSelector | 
			| parser |
			parser := class new.
			parser followSets
				at: (parser productionAt: productionSelector)
				ifAbsent: [ Array with: nil asParser ] ]