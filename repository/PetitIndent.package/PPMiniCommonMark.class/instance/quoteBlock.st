quotes
quoteBlock
	^ quoteIndent,
		content,
	  quoteDedent
	
	map: [ :indent :_content :dedent |
		'<blockquote>', 
			(String cr, _content) trimRight, String cr,
		'</blockquote>'
	]