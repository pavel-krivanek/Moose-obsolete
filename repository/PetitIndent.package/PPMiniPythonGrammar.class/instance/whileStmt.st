grammar
whileStmt
	^ 'while' asParser, (blank / colon), whatever, 
		suiteTrimmed,
		elseOpt
	map: [ :_while :sep :_we :_body :_else |
		{ 'while:' . _body . _else . ':while' }
	]
