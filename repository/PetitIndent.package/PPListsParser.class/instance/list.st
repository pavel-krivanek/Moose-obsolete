as yet unclassified
list
	^ item,
	(item trimAlign) star
	
	map: [ :_first :_rest |
		(OrderedCollection with: _first)
			addAll: _rest;
			yourself
	]