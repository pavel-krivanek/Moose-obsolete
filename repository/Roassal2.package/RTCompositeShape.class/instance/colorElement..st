accessing
colorElement: aOneArgBlock
	shapes ifEmpty: [ self error: 'You first need to add shape before setting the color' ].
	self allShapes do: [ :s | s colorElement: aOneArgBlock ]