rendering
render
	| svg path t |
	svg := TRSVGPath new.
	svg color: color.
	t := builder getPixelPositionOf: 0@0.
	path := String new writeStream.
	path 
		nextPutAll: 'M';
		nextPutAll: t x asFloat asString;
		nextPutAll: ' ';
		nextPutAll: t y asFloat asString.
	
	points doWithIndex: [ :v :i |
		t := builder getPixelPositionOf: i@v.
		path
			nextPutAll: 'L';
			nextPutAll: t x asFloat asString;
			nextPutAll: ' ';
			nextPutAll: t y asFloat asString.
		 ].
	t := builder getPixelPositionOf: points size @ 0.
	path 
		nextPutAll: 'L';
		nextPutAll: t x asFloat asString;
		nextPutAll: ' ';
		nextPutAll: t y asFloat asString;
		nextPutAll: 'Z'.
	svg path: path contents.
	builder view canvas addShape: svg.
	