statements
createView

	^super createView ==> [ :token | 
		| viewNode |
		
		viewNode := SQLCreateViewStmtNode new.		

		viewNode completeName: (token at: 5).
		viewNode name: ( ( token at: 5 ) substrings: $. asString ) last.

		viewNode ofTables: (token at: 8) from.

		viewNode ]