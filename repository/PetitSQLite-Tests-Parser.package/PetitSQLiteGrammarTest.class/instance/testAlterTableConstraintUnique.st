tests
testAlterTableConstraintUnique

	self 
		parse: 'UNIQUE (ITEMS_ID) USING INDEX'
		rule: #alterTableConstraintUnique.