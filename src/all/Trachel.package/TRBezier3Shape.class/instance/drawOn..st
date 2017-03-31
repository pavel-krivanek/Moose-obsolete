drawing
drawOn: athensCanvas
	athensCanvas pathTransform
		restoreAfter: [ athensCanvas setShape: self path.
			(athensCanvas setStrokePaint: color) width: width asFloat.
			athensCanvas draw ]