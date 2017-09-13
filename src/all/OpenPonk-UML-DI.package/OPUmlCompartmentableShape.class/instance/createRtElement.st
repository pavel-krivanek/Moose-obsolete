Roassal2 - manipulation
createRtElement
	^ RTBox new
		size: 0;
		color: [ :model | model style fillColor ];
		borderColor: self style strokeColor;
		borderWidth: self style strokeWidth;
		elementOn: self