interactions
closeNodes: arr
	arr do: [ :e |
		self removeIfPossible: e .
		self removeIfPossible: (e attributes at: #label).
		e connectedEdges do: #remove.
		self closeNodes: (e attributes at: self childrenKey)
		 ].