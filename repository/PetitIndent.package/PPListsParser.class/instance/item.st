as yet unclassified
item
	^ itemStarts, content, itemEnds 

	map:[:_start :_content :_end |
		_content
	]