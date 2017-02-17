statements
createTable

	^super createTable ==> [ :token | 
		| tableNode |
		tableNode := SQLCreateTableStmtNode new.		

		tableNode completeName: (token at: 5).

		tableNode name: ( ( token at: 5 ) substrings: $. asString ) last.
		
		tableNode columns: (((token at: 6) third first first) select: [:each | each isMemberOf: SQLColumnDefNode]).

		tableNode constraints: (token at: 6) third first second.
		
		tableNode]