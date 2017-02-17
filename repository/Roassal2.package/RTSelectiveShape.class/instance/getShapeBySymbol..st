private
getShapeBySymbol: symbol
	symbol = #ellipse ifTrue: [ ^ RTEllipse new].
	^ RTPolygon perform: symbol.