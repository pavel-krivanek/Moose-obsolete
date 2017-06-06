complex
horizontalDecomposition
	"computes the horizontal decompositon of a lattice by looking at the descendants of the top node. From those descendants (first level nodes in the lattice), it sees that two nodes do not have overlapping descendants)"
	
	| nodes sum hdNodes |
	sum := 0.
	hdNodes := OrderedCollection new.
	nodes := self lattice top descendants.
	1 to: (nodes size) 
		do: [:n | 
			|currentNode nodeTemp |
			
			currentNode := nodes at: n.
			
			nodeTemp := nodes flatCollect: [:aNode | (aNode ~=currentNode) ifTrue: [aNode allDescendants: self lattice bottom ] ifFalse: [#()]].
			(nodeTemp anySatisfy: [ :each | 
				(currentNode allDescendants: self lattice bottom) includes: each])
				ifFalse: [(hdNodes includes: currentNode) ifFalse: [sum:= sum + 1. hdNodes add: currentNode.]]].
	^sum.
