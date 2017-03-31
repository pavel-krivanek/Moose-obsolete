as yet unclassified
content
	^ contentElement, 
	 (contentElement trimAlign nonEmpty) star
	
	map: [ :_first :_rest |
		(OrderedCollection with: _first)
			addAll: _rest;
			reject: [ :e | e isNil ]
	]