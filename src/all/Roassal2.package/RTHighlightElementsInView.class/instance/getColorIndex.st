initialization
getColorIndex
	^ view attributeAt: #RTHighlightElementsInView ifAbsentPut: [ 1 ]