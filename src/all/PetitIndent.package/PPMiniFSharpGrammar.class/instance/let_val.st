let
let_val
	^ 
	setIl,
		kwLet, blanks, valueDefinition, ((kwIn trimBlanks / _in), restoreIl), trim, expr
	
	map: [ :__set :__let :__ws1 :__val :__in :__ws2 :__expr  |
		{ __val .  __expr }	
	]