spec
b_l_trimmed
	^ (b_non_content, l_empty plus) 
	
	
	map: [ :break :lines | 
		lines inject: '' into: [ :res :line | res, line asString ] 
	]