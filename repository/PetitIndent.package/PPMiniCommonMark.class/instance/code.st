code
code
	^ codePrefix, emptyLine not, line, lineEnd,
	(
		((prefix, codePrefix, line, lineEnd) ==> #third) /
		((prefix, emptyLine, lineEnd) nonEmpty ==> #second)
	) star
	
	map: [ :_cp :pred :first :le :rest |
		'<code>',
		(rest inject: first into: [ :string :elem | string, String cr, elem ]) trimRight,
		String cr, '</code>'
	] 