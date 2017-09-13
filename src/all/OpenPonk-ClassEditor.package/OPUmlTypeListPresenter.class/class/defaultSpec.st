specs
defaultSpec
	^ SpecLayout composed
		newColumn: [ :col | 
			col
				newRow: [ :row | row add: #searchInput ] height: ComposableModel toolbarHeight;
				add: #entriesList ];
		yourself