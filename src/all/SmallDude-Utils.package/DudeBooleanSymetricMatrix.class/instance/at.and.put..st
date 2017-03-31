accessing
at: row and: column put: aBoolean 
	 
	^self 
		transformRow: row 
		andColumn: column 
		to: 
			[:vectorNo :vectorIndex | (partialColumns at: vectorNo) at: vectorIndex put: aBoolean]