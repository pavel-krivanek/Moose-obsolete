building
detailsIn: a
	a text
		title: 'Method source';
		display: [ :type :method | method formattedSourceText ].
	a text
		title: 'Type source';
		allowNil;
		display: [ :type | type formattedSourceText ].
	a custom: 
		((MooseFileSourceAnchorViewer new browser )
						title: 'Method file source';
						display: [:type :method | method ifNotNil: [ method sourceAnchor] ];
						when: [:type :method | method notNil ]).		
	a custom: 
		((MooseFileSourceAnchorViewer new browser )
						title: 'Type file source';
						allowNil;
						display: [:type | type sourceAnchor ])