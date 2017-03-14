expressions
expr_sequence
	^ expr_terminal, 
	 (
		((_semicolon, expr_terminal) ==> #last) /
		(semicolon_trimmed, expr_terminal optional ==> #last) /
		(((infixOpOnline / infixOpNewline), expr_terminal) ==> #last)
	) star
	
	map: [ :first :rest |
		rest asOrderedCollection addFirst: first; yourself
	]
	
",		(
		 ((semicolon trim, (expr_terminal onsideTo: seqBlockOffsideLine) optional) ==> #second)
		/ 
		 ((_semicolon trim, expr_terminal) ==> #second)
		/ 
		 (((infixOp onsideTo: seqBlockOffsideLine tolerance: 2) trim, expr_terminal) ==> #second)
		) star ==> [ :tokens | (OrderedCollection with: tokens first) addAll: tokens second; yourself ]"