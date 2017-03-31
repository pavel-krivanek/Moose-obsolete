as yet unclassified
list
	^ 
	(indent,
		(contentElement) star,
	dedent) 
	
	map: [:_indent :_content :_dedent |
		_content 
	]