drawing
drawOn: athensCanvas
	from ~= to 
		ifTrue: [  
			athensCanvas pathTransform restoreAfter: [ 
				athensCanvas setShape: self path.
				open 
					ifFalse: [
						athensCanvas setPaint: self themedColor.
						athensCanvas draw ].
				(athensCanvas setStrokePaint: self themedStrokeColor) width: self width.
				athensCanvas draw ] ]