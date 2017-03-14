rendering
updateFor: edge trachelShape: trachelShape
	trachelShape resetPath.
	trachelShape strokePaint: (self colorFor: edge).
	trachelShape width: (self widthFor: edge).
	trachelShape svgPath: (self pathFor: edge).
	trachelShape color: Color transparent
	