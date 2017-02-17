private
updateLineCursor
	| p1 p2 |
	p1 := cursorMax position.
	p2 := cursorMin position.
	
	lineCursor trachelShape 
		width: p1 x - p2 x;
		translateTo: (p1 interpolateTo: p2 at: 0.5).