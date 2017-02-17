building presentations
streamIn: composite
	
	composite text
		title: 'Stream';
		when: [ :aSession | aSession stream notNil ];
		format: [ :aSession | aSession stream collection ];
		initialize: [ :aPresentation | aPresentation 
			selectionInterval: (1 to: (self session stream ifNil: [ 0 ] ifNotNil: [ :aStream | aStream position ])) ];
		with: [ :aPresentation | self installStreamActionsFor: aPresentation ]