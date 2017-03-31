geometry
sideOfPoint: aPoint
	"Compute on which side of the segment a point is.
	For line going from left A=(a_x, a_y) to right B=(b_x, b_y) the value is
	d = (x - a_x)(b_y - a_y) - (y - a_y)(b_x - a_x)
	1 - above the line
	0 - on the line
  -1 - below the line
	"

	^ ((aPoint x - from x) * (to y - from y) - ((aPoint y - from y) * (to x - from x))) sign