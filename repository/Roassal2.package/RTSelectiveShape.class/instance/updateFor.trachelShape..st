hooks
updateFor: anElement trachelShape: trachelShape
	(self shapeFor: anElement) updateFor: anElement trachelShape: trachelShape shapes first.
	trachelShape shapes first
		extent: (self widthFor: anElement) @ (self heightFor: anElement);
		color: (self backgroundColorFor: anElement).
	labelShape updateFor: anElement trachelShape: trachelShape shapes second