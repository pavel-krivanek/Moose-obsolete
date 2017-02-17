indentation
_dedent
	^ 
	([ :context | context indentStack pop ] asParser,
	(prefix, #blank asParser not /
	 prefix not, #blank asParser star) flatten
	
	map: [ :__pop :__dedent |
		__dedent
	]) and, #pop asParser ==> #second