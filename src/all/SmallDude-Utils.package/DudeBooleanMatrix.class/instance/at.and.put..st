accessing
at: row and: column put: aBoolean 
	 
	^self 
		transformRow: row 
		andColumn: column 
		andDo: 
			[:diagNo :diagIx | (diagonals at: diagNo) at: diagIx put: aBoolean]