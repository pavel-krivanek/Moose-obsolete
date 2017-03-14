enumerating
withDiagonalsStartingAt: colNo do: block 
	 
	| diagStart | 
	diagStart := partialColumns size - colNo + 1. 
	diagStart 
		to: partialColumns size - 1 
		do: 
			[:i |  
			block 
				value: (partialColumns at: i) 
				value: i]