createLinesAndLabels
createLinesAndLabelsIfNecessary
	lineH
		ifNil: [ 
			lineH := TRLineShape new.
			lineH color: color.
			canvas := builder view canvas.
			canvas addShape: lineH.
			lineV := TRLineShape new.
			canvas addShape: lineV.
			
			labelH := TRLabelShape new.
			labelH color: color.
			canvas addShape: labelH.
			labelV := TRLabelShape new.
			labelV color: color.
			canvas addShape: labelV. ]