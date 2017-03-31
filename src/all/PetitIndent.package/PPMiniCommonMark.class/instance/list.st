lists
list
	^ 
	listBullet and,
	listItem,
	(prefix, listItem ==> #second) star
	
	map: [ :_bullet :_first :_rest |
		| start |
		start := _bullet first.
		'<', start, '>', 
			String cr, _first,
			(String cr, (_rest joinUsing: String cr)) trimRight, String cr,
		'</', start, '>'
		
	]