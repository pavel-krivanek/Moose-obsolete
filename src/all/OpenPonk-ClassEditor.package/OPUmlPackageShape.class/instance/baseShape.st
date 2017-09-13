accessing
baseShape
	^ RTBox new
		width: self minWidth;
		height: self minHeight;
		fillColor: Color white;
		borderColor: Color black