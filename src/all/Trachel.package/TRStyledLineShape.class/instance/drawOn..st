drawing
drawOn: athensCanvas
	athensCanvas pathTransform
		restoreAfter: [ athensCanvas setShape: self path.
			(athensCanvas setStrokePaint: self themedColor)
				width: width;
				perform: self capStyle;
				dashes: dashes offset: 0.
			athensCanvas draw ]