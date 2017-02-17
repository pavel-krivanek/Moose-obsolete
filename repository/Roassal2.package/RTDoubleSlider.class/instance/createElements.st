examples
createElements
	sliderElements := RTGroup new.
	extremity1 := (RTBox new width: 5; height: 10) element.
	extremity2 := (RTBox new width: 5; height: 10) element.
	line := (RTLine new width: 5) edgeFrom: extremity1 to: extremity2.
	extremity2 translateTo: 200 @ 0.
	
	cursorMin := self elementOn: nil.
	cursorMax := self elementOn: nil.
	lineCursor := (RTBox new height: 8; color: Color blue trans) element.
	
	sliderElements
		add: extremity1;
		add: extremity2;
		add: line;
		add: lineCursor;
		add: cursorMin;
		add: cursorMax.