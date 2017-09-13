Roassal2 - drawing
createRtElement
	^ RTSVGPath new
		path: 'L 0 0';
		borderColor: self style strokeColor;
		borderWidth: (self style strokeWidth / 2) asFloat;
		elementOn: self