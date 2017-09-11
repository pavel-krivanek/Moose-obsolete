default
defaultSliderShape
	| c |
	c := Color blue.
	sliderShape := RTCompositeShape new 
		add: (RTEllipse new size: 30; color: Color blue; borderWidth: 0.01; borderColor: Color black);
		add: (RTEllipse new width: 24; height: 19.5;
			color: c) translateBy: 0@ -3.9;
		add: (RTArc new innerRadius: 12.9; externalRadius: 13.8; alphaAngle: 200; betaAngle: 340;
			color: c). "Could be c2"