accessing
center
	"Return the center of the polygon. The center is determined as the center of encompassing rectangle, which may be different from the exact center of the shape (e.g., the value returned by this method may be actually outside the shape itself)."
	^ self encompassingRectangle center