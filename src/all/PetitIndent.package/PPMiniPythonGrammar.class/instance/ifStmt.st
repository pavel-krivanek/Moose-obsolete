grammar
ifStmt
	^ ifKw, whatever,  suiteTrimmed,
       ( (align, 'elif' asParser,  whatever, suiteTrimmed) ==> #last ) star, 
       elseOpt 
	map: [ :_if :_whatever :_then :__elifs :_else |
		| _elifs _retval |
		_elifs := __elifs.

		_retval := OrderedCollection new.
		_retval add: 'if:'.
		_retval add:_then.

		_elifs do: [ :e | 
			_retval add: 'if:'.
			_retval add: e 
		].
		_retval add: _else.
		_elifs do: [ :e | 
			_retval add: ':if'
		].
		_retval add: ':if'.
		_retval
	]