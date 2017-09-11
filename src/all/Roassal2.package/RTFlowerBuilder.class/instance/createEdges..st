private
createEdges: array
	| children |
	array do: [ :e | 
		children := (e attributes at: self childrenKey).
		children do: [ :ch |
			view add: (self line edgeFrom: e to: ch)].
		self createEdges: children. ]
		
		