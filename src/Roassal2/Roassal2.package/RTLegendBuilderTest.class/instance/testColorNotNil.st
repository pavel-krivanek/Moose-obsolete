tests
testColorNotNil

	self should: [ RTColorLegendItem new color: nil ] raise: Error.
	self shouldnt: [ RTColorLegendItem new color: Color red ] raise: Error