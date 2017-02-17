accessing
at: row and: column 
	 
	^self 
		transformRow: row 
		andColumn: column 
		to: 
			[:vectorNo :vectorIndex | (partialColumns at: vectorNo) at: vectorIndex]