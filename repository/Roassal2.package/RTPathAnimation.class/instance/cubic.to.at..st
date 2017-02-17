refreshing
cubic: prev to: current at: t
	| c0 c1 c2 c3 cp cx cy bx by ax ay tSquared tCubed x y|
	cp := (curves at: index) second.
	c0 := prev.
	c1 := cp second.
	c2 := cp third.
	c3 := current.
	
	cx := 3.0 * (c1 x - c0 x).
	bx := (3.0 * (c2 x - c1 x)) - cx.
	ax := c3 x - c0 x - cx - bx.
	
	cy := 3.0 * (c1 y - c0 y).
	by := (3.0* (c2 y - c1 y)) - cy.
	ay := c3 y - c0 y - cy - by.
	tSquared := t*t.
	tCubed := tSquared * t.
	x := (ax * tCubed) + (bx * tSquared) + (cx * t) + c0 x.
	y := (ay * tCubed) + (by * tSquared) + (cy * t) + c0 y.
	^ x@y