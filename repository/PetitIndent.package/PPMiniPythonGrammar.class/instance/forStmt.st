grammar
forStmt
	^ 'for' asParser, blank, whatever,
		suiteTrimmed,
		elseOpt
"	==> [ :tokens | Array with:tokens second with:tokens sixth with:tokens seventh ]"
	map: [ :_for :_sep :_whatever :_body :_else |
		{ 'for:' . _body . _else . ':for' }
	]