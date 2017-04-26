drawing
drawOn: athensCanvas
	athensCanvas pathTransform
		restoreAfter: [ athensCanvas setShape: self path.
			(athensCanvas setStrokePaint: self themedColor) width: width asFloat.
			athensCanvas draw ]