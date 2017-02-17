lists
listBullet
	^ (
		 "get content"
		 (linePrefix, listMarker, space, linePrefix optional) flatten and,
		 "push content as spaces"
		 ((linePrefix, listMarker, space, linePrefix optional) flatten and ==> [:e | self spaces: (e size)]) pushAsParser,
	    "get type of bullet -> numbered or unnumbered"
	    ((linePrefix, listMarker, space) ==> #second)
	  
	map: [ :_content :_push :_type |
		{ _type . _content }
	])