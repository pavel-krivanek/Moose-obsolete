initialization
insertStatement
	^ super insertStatement
		==> [ :token | 
			| insertStmt |
			insertStmt := SQLInsertStatementNode new.
			insertStmt table: (token at: 4).
			(token at: 5) isEmpty
				ifFalse: [ 
					(token at: 5) first ifNotNil: [ insertStmt affectedColumns: ((token at: 5) first reject: [ :each | each = $, ]) ].
					(token at: 5) second
						ifNotNil: [ 
							(token at: 5) second isArray
								ifTrue: [ insertStmt values: ((token at: 5) second third reject: [ :each | each = $, ]) ] ] ].
			insertStmt ]