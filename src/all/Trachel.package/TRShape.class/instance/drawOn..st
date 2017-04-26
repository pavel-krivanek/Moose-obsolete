drawing
drawOn: athensCanvas
	| pt |
	"Maybe here, we need to insert the stroke"
	pt := athensCanvas pathTransform.
	pt restoreAfter: [
		pt scaleBy: matrix sx @ matrix sy.
		
		athensCanvas
			setPaint: self themedColor;
			drawShape: self path.
			
		athensCanvas
			setStrokePaint: self themedStrokeColor;
			drawShape: self path  ]