building presentations
debugViewIn: composite
	(self session stream root respondsTo: #root)
		ifFalse: [ ^ self ].
	(composite dynamic 
		title: 'Result';
		display: [|resultPresentation|
			resultPresentation := GLMCompositePresentation new.
			self session stream root root gtDebugView: resultPresentation.
			resultPresentation last noTitle.
			resultPresentation ])