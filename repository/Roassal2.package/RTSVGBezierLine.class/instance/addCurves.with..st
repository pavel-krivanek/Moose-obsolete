adding
addCurves: stream with: visitor
	| p1 p2 |
	p1 := points first.
	stream
		nextPutAll: 'd="M';
		nextPutAll: (visitor number: p1 x);
		nextPutAll: ',';
		nextPutAll: (visitor number: p1 y).
	2 to: points size - 2 do: [ :i | 
		p1 := points at: i.
		p2 := (p1 + (points at: i + 1)) / 2.
		stream
			nextPutAll: 'Q';
			nextPutAll: (visitor number: p1 x);
			nextPutAll: ',';
			nextPutAll: (visitor number: p1 y);
			nextPutAll: ' ';
			nextPutAll: (visitor number: p2 x);
			nextPutAll: ',';
			nextPutAll: (visitor number: p2 y) ].
	p1 := points at: points size - 1.
	p2 := points last.
	stream
		nextPutAll: 'Q';
		nextPutAll: (visitor number: p1 x);
		nextPutAll: ',';
		nextPutAll: (visitor number: p1 y);
		nextPutAll: ' ';
		nextPutAll: (visitor number: p2 x);
		nextPutAll: ',';
		nextPutAll: (visitor number: p2 y);
		nextPutAll: '" '