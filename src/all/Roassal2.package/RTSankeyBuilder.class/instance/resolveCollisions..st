private
resolveCollisions: elementsByBreadth
	| nodes node dy y0 y i |
	y := [ :e | e attributes at: #y ].
	
	elementsByBreadth do: [ :els |
		y0 := 0.
		nodes := els sorted: [ :a :b | (y value: a) < (y value: b) ].
		
		nodes do: [ :n |
			node := n.
			dy :=  y0 - (y value: node).
			dy > 0 ifTrue: [ node attributes at: #y put: (y value: node) + dy ].
			y0 := (y value: node) + nodePadding + (node attributes at: #dy).  ].
		"If bottommost node goes outside the bounds push it back up"
		dy := y0 - nodePadding - extent y.
		dy > 0 ifTrue: [ 
			y0 := node attributes at: #y put: (y value: node) - dy.
			i := nodes size - 1.
			[ i >= 1  ] whileTrue: [
				node := nodes at: i.
				dy := (y value: node) + (node attributes at: #dy) +  nodePadding - y0.
				dy > 0 ifTrue: [ node attributes at: #y put: (y value: node) - dy ].
				y0 := y value: node.
				i := i -1 ] ] ].
	