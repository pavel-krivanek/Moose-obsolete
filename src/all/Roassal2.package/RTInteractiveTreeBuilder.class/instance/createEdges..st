private
createEdges: arr
	| edges |
	edges := RTGroup new.
	arr do: [ :e | | children |
		children := e attributes at: self childrenKey.
		children do: [ :child |
			edges add: (self lineShape edgeFrom: e to: child) ].
		edges addAll: (self createEdges: children) ].
	^ edges.