private
addChildren: el
	| ch ed |
	el attributes removeKey: #click ifAbsent: [].
	ch := el attributes at: self childrenKey.
	ch do: [ :x|
		view add: x.
		stepping addNode: x.
		ed := self line edgeFrom: el to: x.
		view add: ed.
		stepping addEdge: ed.
		self addChildren: x ].