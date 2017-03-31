UI
defaultCellShape
	^ (RTCompositeShape new 
		add: (RTPolygon rectangle);
		add: ( RTSparkline new
			size: self cellSize);
			color: Color transparent;
		yourself)