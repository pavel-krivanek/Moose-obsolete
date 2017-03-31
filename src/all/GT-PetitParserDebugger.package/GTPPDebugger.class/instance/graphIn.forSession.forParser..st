building presentations
graphIn: aComposite forSession: aSession forParser: parser
	
	aComposite morph
		title: 'Graph';
		useExplicitNotNil;
		display: [ 
			| morph |
			morph := ScrollPane new.
			morph color: Color white.
			morph scroller addMorph: 	parser 	morphicProduction.
			(morph allMorphs select: [ :each | 
				each class = StringMorph and: [ each color = Color blue ] ]) do: [ :each |
					each on: #click send: #execute to: 
						((GTPPStepToNextNamedProductionAction forDebugger: self)
							production: each contents) ].
			morph ] 