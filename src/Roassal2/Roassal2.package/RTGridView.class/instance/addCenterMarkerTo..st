adding
addCenterMarkerTo: aCanvas
	aCanvas
		addShape:
			(TRSVGPath new
				strokePaint: (Color black alpha: 0.5);
				borderWidth: 1;
				path: 'M -5 0 H 5 M 0 -5 V 5')