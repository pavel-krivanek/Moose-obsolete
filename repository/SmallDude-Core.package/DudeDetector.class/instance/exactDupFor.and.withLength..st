engine-private
exactDupFor: rowEntity and: colEntity withLength: minDupLen
	| matrix duplications startNo |
	duplications := OrderedCollection new: 50.
	matrix := self
		dupMatrixFor: (self textLinesFor: rowEntity)
		and: (self textLinesFor: colEntity)
		onlyUpperHalf: rowEntity = colEntity.
	rowEntity = colEntity
		ifTrue: [ startNo := matrix rowSize + 1 ]
		ifFalse: [ startNo := 1 ].
	matrix
		withDiagonalsStartingAt: startNo
		do: [ :diagonal :diagonalNo | 
			diagonal
				withContinuos: true
				fragmentsOfMinSize: minDupLen
				do: [ :start :end | 
					| startRow startCol endRow endCol len |
					matrix
						transformDiagNo: diagonalNo
						andDiagIndex: start
						andDo: [ :row :col | 
							startRow := row.
							startCol := col ].
					len := end - start.
					endRow := startRow + len.
					endCol := startCol + len.
					duplications
						addLast:
							(DudeDuplication newExactFrom: rowEntity
								start: (self findRealLineNumber: startRow for: rowEntity)
								end: (self findRealLineNumber: endRow for: rowEntity)
								and: colEntity
								start: (self findRealLineNumber: startCol for: colEntity)
								end: (self findRealLineNumber: endCol for: colEntity)
								onDiagonal: diagonalNo
								numberOfDuplicatedLines: endRow - startRow + 1) ] ].
	^ duplications