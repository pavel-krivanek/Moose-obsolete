hooks
computePath
	| vector r u unit middle endPoint |
	vector := self to - self from.
	r := vector r.
	r = 0
		ifTrue: [ ^ false ].
	u := vector normal.
	unit := vector / r.
	endPoint := self to - (vector * (1 - percentage)).
	end := endPoint - (2 * unit * size).
	middle := endPoint - (unit * size).
	left := middle - (u * size * 0.7).
	right := middle + (u * size * 0.7).
	path := self athensCanvas
		createPath: [ :builder | 
			builder
				absolute;
				moveTo: end;
				lineTo: left;
				lineTo: endPoint;
				lineTo: right;
				lineTo: end ]