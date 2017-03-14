default
defaultSliderShape
	| lin |
	lin := TRPlatform current linearGradientClass.
	sliderShape := RTCompositeShape new 
		add: (RTEllipse new size: 30; color: Color blue; borderWidth: 0.01; borderColor: Color black);
		add: (RTEllipse new width: 24; height: 19.5;
			color: (lin new
				start: 0@ -8.75; stop: 0@8.75;
				colorRamp: (Array with: (0.0 -> (Color white alpha: 0.6)) with: (1.0 -> Color transparent)))) translateBy: 0@ -3.9;
		add: (RTArc new innerRadius: 12.9; externalRadius: 13.8; alphaAngle: 200; betaAngle: 340;
			color: (lin new
				start: 0@ 7.0; stop: 0@12.0;
				colorRamp: (Array with: (0.0-> Color transparent) with: (1.0 -> (Color white alpha: 0.6))))).