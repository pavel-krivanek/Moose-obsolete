start-phase
startAlgo
	"The method takes each node and analyzes its descendants for possible module identification. It found, the module is added to the list moduleNodes of the class and the nodes in the module are removed from the list of nodes to be considered. The algorithm is then restarted on rest of the nodes."
	
	1 to: (nodesToConsider size) 
		do: [:n | 
				((nodesToConsider at:n) descendants size > 1)
				ifTrue: [
					
					(self analyzeDescendantsOf: (nodesToConsider at:n))
					ifTrue: [
							self moduleNodes: self candidate.
							nodesToConsider removeAllSuchThat: [:each | self candidate includes: each].
							self flushCandidate.
							^ true.			
						]	
				]   
		].
	^ false.