geometry
parameters
	| k q |
	"y = kx + q
	k = (y2-y1) / (x2-x1)
	q = y1 - k * x1	"
	k := (to y - from y) / (to x - from x).
	q := from y - (k * from x).
	^ Array with: k with: q