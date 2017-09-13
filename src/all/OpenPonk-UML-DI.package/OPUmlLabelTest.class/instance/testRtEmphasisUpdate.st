tests
testRtEmphasisUpdate
	element text: 'some text'.
	element
		emphasis: [ :model :localStyle | 
			localStyle fontBold: model first.
			localStyle fontItalic: model second ].
	element localStyle: OPUmlStyle new.
	element modelElement: #(true true).
	rt := element rtElement.
	self
		assertCollection: (rt shape emphasisFor: rt)
		hasSameElements:
			{TextEmphasis bold.
			TextEmphasis italic}.
	element modelElement: #(true false).
	self assertCollection: (rt shape emphasisFor: rt) hasSameElements: {TextEmphasis bold}