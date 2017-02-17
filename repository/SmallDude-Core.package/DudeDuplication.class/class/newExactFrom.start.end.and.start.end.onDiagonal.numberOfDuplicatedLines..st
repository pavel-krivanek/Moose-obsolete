instance creation - internal
newExactFrom: rowEntity start: startRow end: endRow and: colEntity start: startCol end: endCol onDiagonal: diagNo numberOfDuplicatedLines: fragmentLength
	| rowFragment colFragment dup  |
	rowFragment := DudeSourceCodeFragment
		entity: rowEntity
		beginLine: startRow
		endLine: endRow
		fragmentLength: fragmentLength.
	rowEntity mooseModel silentlyAdd: rowFragment.
	colFragment := DudeSourceCodeFragment
		entity: colEntity
		beginLine: startCol
		endLine: endCol
		fragmentLength: fragmentLength.
	colEntity mooseModel silentlyAdd: colFragment.
	dup := self refCode: rowFragment dupCode: colFragment signature: 'E' , fragmentLength printString.
	dup
		headDiagonal: diagNo;
		tailDiagonal: diagNo.
	^ dup