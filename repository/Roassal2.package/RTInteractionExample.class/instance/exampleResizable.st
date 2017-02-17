sources
exampleResizable

	| v g |
	v := RTView new.
	g := RTGroup new.
	g 
		add: (RTBox new
			size: 100;
			borderColor: Color black;
			borderWidth: 1;
			element);
		add: (	RTRoundedBox new
			size: 50;
			borderRadius: 20;
			borderColor: Color black;
			borderWidth: 1;
			element);
		add: (RTEllipse new
			width: 100;
			height: 30;
			borderColor: Color black;
			element).

	v addAll: g.

	RTGridLayout on: g.

	g @ RTDraggable.
	g @ RTResizable.

	v @ RTZoomableView.

^ v