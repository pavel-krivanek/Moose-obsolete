complex
totalConnections
	^(self lattice nodes flatCollect: [:aNode | aNode descendants]) size