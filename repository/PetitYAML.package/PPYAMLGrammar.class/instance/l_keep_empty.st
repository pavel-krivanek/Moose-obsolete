spec
l_keep_empty	
	^ l_empty YAMLBlockIn star, l_trail_comments optional
	
	map: [ :lines :comments | 
		lines inject: '' into: [ :concat :line | concat, line ]
	]