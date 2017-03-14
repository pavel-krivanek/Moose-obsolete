accessing
addWindowHashFor: aPresentation

	aPresentation window ifNotNil: [ :aWindow |
		self infoAt: #windowHash put: aWindow identityHash ]