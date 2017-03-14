as yet unclassified
testArea
	self
		assert:
			((GTriangle with: 0 @ 0 with: 2 @ 0 with: 0 @ 2) area closeTo: 2)