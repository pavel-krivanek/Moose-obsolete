grammar
try1Stmt
	^ 'try' asParser, whatever, suiteTrimmed,
		((align, 'except' asParser, whatever, suiteTrimmed) ==> #last ) plus,
		elseOpt,
		((align, 'finally' asParser, colon trimBlanks, suiteTrimmed) ==> #last) optional 
		
	map: [ :_try :_col :_body :_excepts :_else :_finally |
		| retval |
		
		
		retval := { 'try:' . _body . _excepts . _else . ':try' }.
		
		_finally isNil ifFalse: [ 
			retval := { 'try:' . retval .  _finally . ':try' }.
		].
		retval
	]
      