accessing
scale: anObject
	| d dx dy dd k |
	d := position rtValue: anObject.
	dx := d x - focus x.
	dy := d y - focus y.
	dd := ((dx * dx) + (dy * dy)) sqrt.
	dd >= radius ifTrue: [ ^ RTXPPoint x: d x y: d y y0: 1 ].
	
	k := (k0 * (1 - ( dd negated * k1) exp ) / dd * 0.75) + 0.25.
	^ RTXPPoint 
		x: focus x + (dx*k) 
		y: focus y + (dy*k)
		y0: (k min: 10)
        

