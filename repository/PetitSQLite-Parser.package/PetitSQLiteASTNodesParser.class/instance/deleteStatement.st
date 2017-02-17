initialization
deleteStatement
	^ super deleteStatement
		==> [ :token | 
			| deleteStmt |
			deleteStmt := SQLDeleteStmtNode new.
			deleteStmt addFrom: token third.
			(token at: 4)
				ifNotNil: [ 
					| conditions |
					conditions := (token at: 4) select: [ :each | each isMemberOf: Array ].
					conditions do: [ :condition | deleteStmt addWhere: condition ] ].
			deleteStmt ast: token.
			deleteStmt ]