specs
defaultSpec
	^ SpecLayout composed
		newRow: [ :row | 
			row
				newColumn: [ :col | col add: #tabManager ];
		yourself ]