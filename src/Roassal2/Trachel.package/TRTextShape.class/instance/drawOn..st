drawing
drawOn: athensCanvas
	| spacing |
	spacing := self fontMetrics fontHeight.
	"self drawEncompassingRectangleOn: athensCanvas."
	athensCanvas pathTransform
		restoreAfter: [ | e |
			e := self extent.
			athensCanvas pathTransform
				multiplyBy: matrix asFloatTransform;
				translateBy: e / (-2 @ -2).
			athensCanvas setFont: font.
			athensCanvas setPaint: color.
			athensCanvas pathTransform translateBy: 0 @ font ascent.
			text lines
				do: [ :line | 
					athensCanvas drawString: line.
					athensCanvas pathTransform translateBy: 0 @ spacing ] ]