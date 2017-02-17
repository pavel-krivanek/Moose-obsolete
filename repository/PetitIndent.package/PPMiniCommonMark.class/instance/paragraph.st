paragraphs
paragraph
	^ linePrefix, (emptyLine) not, line trimBlanks, lineEnd,
	(
		lazyParagraphPrefix,
		(emptyLine / ATXHeader / listBullet) not,
		line trimBlanks,
		lineEnd ==> #third
	) star
	map: [ :_lp :_pred :_line :_end :_rest |
		'<p>', 
			(_rest inject: _line trim into: [ :total :elem  | total, String cr, elem ]),
		'</p>'
	]