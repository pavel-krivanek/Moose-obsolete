construction
connectBottom
	|bottom|
	self nodes do: [:node | (node descendants isEmpty and: [node ~= self bottom]) 
		ifTrue: [node addDescendant: (self bottom)]].