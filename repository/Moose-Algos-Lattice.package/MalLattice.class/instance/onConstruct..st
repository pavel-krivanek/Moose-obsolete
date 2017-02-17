construction
onConstruct: formalContext
	formalContext concepts
		do: [:each | self addNode: (MalLatticeNode withNew: each)].
		layers := ((self nodes asArray groupedBy: #layer) associations sort: [ :a :b | a key < b key]) collect: #value.
		layers size - 1 to: 1 by: -1 do: [ :n |
		n + 1 to: layers size -1 do: [ :m |
			(layers at: n) do: [ :each |
				(layers at: m) do: [ :child |
					each maybeAppendChild: child ]]]].
	self filterDescendants.
	self connectBottom.
	self computeLabels.