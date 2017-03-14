headers
ATXHeader
	^ linePrefix, (($# asParser plus) setMax: 6), space, line, lineEnd
	
	map: [ :_lp :level :sep :_title :end |
		| size |
		size := level size asString. 
		'<h', size, '>', _title trim, '</h', size, '>'
	]