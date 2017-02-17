lists
listItem
	^ listBullet, listContent , listItemEnd
	
	map: [ :_bullet :_content :_end |
		'<li>', (String cr, _content) trimRight, String cr, '</li>'
	]
	
