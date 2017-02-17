building presentations
firstIn: aComposite forSession: aSession forParser: parser

	aComposite list
		title: 'First';
		useExplicitNotNil;
		display: [ 
			parser firstSet.
		];
		format: [ :p | p displayName ]