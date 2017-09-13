tests
testRtEmphasis
	element text: 'some text'.
	element localStyle: OPUmlStyle new.
	rt := element rtElement.
	self assertCollection: (rt shape emphasisFor: rt) hasSameElements: #().

	element localStyle fontBold: true.
	self assertCollection: (rt shape emphasisFor: rt) hasSameElements: {TextEmphasis bold}.

	element localStyle fontUnderline: true.
	self
		assertCollection: (rt shape emphasisFor: rt)
		hasSameElements:
			{TextEmphasis bold.
			TextEmphasis underlined}.

	element localStyle fontItalic: true.
	self
		assertCollection: (rt shape emphasisFor: rt)
		hasSameElements:
			{TextEmphasis bold.
			TextEmphasis underlined.
			TextEmphasis italic}