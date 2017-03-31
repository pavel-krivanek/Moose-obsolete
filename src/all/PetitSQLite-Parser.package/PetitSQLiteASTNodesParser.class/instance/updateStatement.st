statements-elements
updateStatement
	^super updateStatement ==>[:token |
		| updateStmt |
		
		updateStmt := SQLUpdateStatementNode new.
		
		updateStmt table: token third second.

		updateStmt].
	