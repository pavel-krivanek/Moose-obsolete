layout
layout: e
	
	| children |
	(e attributes includesKey: self childrenKey) ifFalse: [ ^ self ].
	
	children := e attributes at: self childrenKey.
	children isEmpty ifTrue: [ ^ self ].
	
	children do: [ :child | self layout: child ].
	self sortChildren: children.
	self layoutNodes: children
	