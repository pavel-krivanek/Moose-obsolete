inspector extensions
gtSpotterPreviewIconIn: aComposite
	<spotterPreview: 10>
	(self icon notNil or: [ self provider class canPerform: (self selector, 'Icon') asSymbol ])
		ifTrue: [ 
			aComposite addBrickBack: (self icon asAlphaImageMorph
				layout: #center;
				scale: 2.0) asBrick ]

	