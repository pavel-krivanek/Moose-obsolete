adding
addInteractions
	self @ RTDraggable.
	self @ (RTResizable new minSize: self minWidth @ self minHeight)