complex
hDNodeSize
	"we still do not know how to compute the number of nodes in the horizontal decomposition. This method was a first effort but does not return the correct results."
	
	
	| nodes hdNodes totalNodes|
	totalNodes := 0.
	hdNodes := OrderedCollection new.
	nodes := self lattice top descendants.
	1 to: (nodes size) 
		do: [:n | 
			|currentNode nodeTemp |
			
			currentNode := nodes at: n.
			
			nodeTemp := nodes flatCollect: [:aNode | (aNode ~=currentNode) ifTrue: [aNode allDescendants: self lattice bottom ] ifFalse: [#()]].
			(nodeTemp anySatisfy: [ :each | 
				(currentNode allDescendants: self lattice bottom) includes: each])
				ifFalse: [(hdNodes includes: currentNode) ifFalse: [hdNodes add: currentNode. totalNodes := totalNodes + (currentNode allDescendants: self lattice bottom) size]]].
	^totalNodes.
