engine-private
dupMatrixFor: rowLines and: colLines onlyUpperHalf: onlyHalf 
	 
	| rows cols matrix startCol | 
	rows := rowLines size. 
	cols := colLines size. 
	startCol := 1. 
	matrix := DudeBooleanMatrix 
		rows: rowLines size 
		columns: colLines size. 
	1 
		to: rows 
		do: 
			[:row |  
			| rowLine | 
			rowLine := rowLines at: row. 
			onlyHalf ifTrue: [startCol := startCol + 1]. 
			startCol 
				to: cols 
				do: 
					[:column |  
					(strategy 
						value: rowLine 
						value: (colLines at: column)) 
						ifTrue: [matrix putTrueAt: row and: column]]]. 
	^matrix