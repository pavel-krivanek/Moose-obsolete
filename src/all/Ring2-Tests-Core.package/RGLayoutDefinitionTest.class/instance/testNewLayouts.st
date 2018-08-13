tests
testNewLayouts

	RGLayout allSubclasses do: [ :layoutClass |
		| layout | 
		layout  := layoutClass unnamed.
		self assert: (layout isRingResolved).
		self assert: (layout hasUnresolved: #name).
		self assert: (layout isLayout).
		self assert: (layout allSlots isEmpty).
		self assert: (layout instVarNames isEmpty). ]