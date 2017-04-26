drawing
drawOn: athensCanvas
	self shouldBeDrawn
		ifFalse: [ ^ self ].
	athensCanvas pathTransform
		restoreAfter: [ 
			athensCanvas pathTransform
				multiplyBy: matrix asFloatTransform.
			athensCanvas 
				setPaint: self themedColor;
				drawShape: self path.
			self drawStrokeIfNecessaryOn: athensCanvas ]