adding
addPosition: stream
	|box temp |
	box := element encompassingRectangle.
	temp := RTSVGVisitor new.
	
	stream
		nextPutAll: 'x="';
		nextPutAll: (temp number: (self x - (box width / 5)));
		nextPutAll: '" y="';
		nextPutAll: (temp number: (self y + (box height / 4)));
		nextPutAll: '" '.