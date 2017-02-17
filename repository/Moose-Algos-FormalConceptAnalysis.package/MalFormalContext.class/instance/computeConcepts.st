private
computeConcepts
	
	| algorithm |
	algorithm := MalGanterAlgorithm on: self.
	^algorithm allConcepts