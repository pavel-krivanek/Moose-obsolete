building presentations
followIn: aComposite forSession: aSession forParser: parser
	
	aComposite list
		title: 'Follow';
		useExplicitNotNil;
		format: #displayName;
		display: [
			| rootParser |
			rootParser := aSession rootParser.
			rootParser followSets at: parser ifAbsent: [ #() ].
		]