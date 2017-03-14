tests
testRoassalPresentationConstructor
	| composite |
	composite := GLMCompositePresentation new.
	composite roassal2.
	self assert: composite presentations size equals: 1.
	self assert: (composite presentations anyOne isKindOf: GLMRoassal2Presentation)