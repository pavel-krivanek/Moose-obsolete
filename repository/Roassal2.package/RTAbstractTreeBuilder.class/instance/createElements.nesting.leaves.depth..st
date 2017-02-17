private
createElements: atree nesting: block1 leaves: block2 depth: depth
	| children e leaves nodes|
	
	e := shapeBuilder elementOn: atree.
	self interaction setUpElement: e.
	self elements add: e.
	
	children := block1 rtValue: atree.
	e attributes at: #depth put: depth.
	children := children collect: [ :child | | e2 |
		e2 := self createElements: child nesting: block1 
			leaves: block2 depth: depth + 1.
		e2 attributes at: #parent put: e.
		e2 ] as: Array.
	leaves := (block2 rtValue: atree) collect: [:child | | e2 |
		e2 := self createElements: child nesting: #() 
			leaves: #() depth: depth +1.
		e2 attributes at: #parent put: e.
		e2 ] as: Array.
	nodes := OrderedCollection new: (leaves size + children size).
	nodes addAll: children; addAll: leaves.
		
	e attributes at: self childrenKey put: nodes.
	^ e.