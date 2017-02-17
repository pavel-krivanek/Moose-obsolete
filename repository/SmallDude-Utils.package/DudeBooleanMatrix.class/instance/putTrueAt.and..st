accessing
putTrueAt: row and: column 
	 
	^self 
		transformRow: row 
		andColumn: column 
		andDo: [:diagNo :diagIx | (diagonals at: diagNo) putTrueAt: diagIx]