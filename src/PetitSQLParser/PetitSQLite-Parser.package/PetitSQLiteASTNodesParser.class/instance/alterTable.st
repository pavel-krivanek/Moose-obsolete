statements
alterTable
	^super alterTable ==> [ :token | 

		| alterTableNode |
		
		alterTableNode := SQLAlterTableStmtNode new.
		
		alterTableNode nameOfTableToAlter: token third.

		((token at: 4) first matches: 'rename') ifTrue:[
			alterTableNode isRename: true.
			alterTableNode newTableName: (token at: 4) second].
		
		((token at: 4) first matches: 'add') ifTrue: [
				alterTableNode isAddConstraint: true.
				alterTableNode addConstraint: (token at: 4) second].

		alterTableNode]