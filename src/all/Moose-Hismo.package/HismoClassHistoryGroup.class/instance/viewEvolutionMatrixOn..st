view
viewEvolutionMatrixOn: view 
	| temp y x matrix |

	matrix := Matrix rows: self size columns: self referenceHistory size.
	temp := self sorted: [:a :b | a first referenceVersion < b first referenceVersion].
	y := 1.
	temp
		do: [ :eachHistory | 
			x := 1.
			eachHistory
				completeHistoryDo: [ :eachVersion | 
					view shape rectangle 
						width: #numberOfLinesOfCode;
						height: #numberOfMethods.
					matrix at: y at: x put: (view node: eachVersion).
					x := x + 1 ]
				ifNotPresent: [ :zzz | 
					matrix at: y at: x put: (self emptyNodeOn: view).
					x := x + 1 ].
			y := y + 1 ].
	view layout cell lineItemsCount: matrix columnCount; gapSize: 3; leftCentered.