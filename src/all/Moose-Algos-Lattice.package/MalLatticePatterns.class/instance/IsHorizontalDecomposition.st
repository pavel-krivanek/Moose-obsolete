complex
IsHorizontalDecomposition
	
	| dict nodes |
	nodes := self lattice top descendants.
	1 to: (nodes size -1 ) 
		do: [:n | 	(n+1 to: (nodes size))
			do:[:m | ((nodes at:n) hasDescendant: (nodes at: m))
			ifFalse: 	[(((nodes at: n) allDescendants: self lattice bottom) anySatisfy: [:each | (((nodes at:m) allDescendants: self lattice bottom) includes: each)]) ifFalse: [^true]]]].
	^false.
