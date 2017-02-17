rendering
updateFor: edge trachelShape: trachelShape
	self updateFromToFor: edge trachelShape: trachelShape.
	trachelShape color: (self colorFor: edge).
	trachelShape width: (self widthFor: edge).
	trachelShape resetPath