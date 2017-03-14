tests
testTypeName

	self 
		parse: ' date '
		rule: #typeName.
	self 
		parse: ' timestamp ( 123 ) '
		rule: #typeName.
	self 
		parse: ' number ( - 1235)'
		rule: #typeName.
	self 
		parse: ' number (-1235 , 235 )'
		rule: #typeName.
	self 
		parse: ' number (-1235 , 235.43 )'
		rule: #typeName.
	self 
		parse: ' number (-1235 , -235.43 )'
		rule: #typeName.
	self 
		parse: ' RAW(254) '
		rule: #typeName.
	self 
		parse: ' VARCHAR2(255 CHAR) '
		rule: #typeName