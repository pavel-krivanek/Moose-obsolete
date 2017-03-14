rendering
render: aRoassalPresentation
	| view |
	view := aRoassalPresentation view.
	aRoassalPresentation renderOn: view.
	aRoassalPresentation when: GLMPresentationUpdated send: #actOnPresentationUpdate: to: self.
	^ myMorph := view view setUpCanvas buildMorph