tests
testAlterTableRenameTable

	self 
		parse: 'ALTER TABLE M_INSN_LT RENAME TO TEstName'
		rule: #alterTable.