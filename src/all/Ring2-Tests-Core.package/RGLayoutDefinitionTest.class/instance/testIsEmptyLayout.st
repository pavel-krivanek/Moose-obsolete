tests
testIsEmptyLayout

	| layout layoutClass | 
		
	layoutClass := 	RGEmptyLayout.
	layout  := layoutClass unnamed.
	self assert: (layout isEmptyLayout).
	(RGLayout allSubclasses copyWithout: layoutClass) do: [ :each |
		self deny: (each unnamed isEmptyLayout) ]
	