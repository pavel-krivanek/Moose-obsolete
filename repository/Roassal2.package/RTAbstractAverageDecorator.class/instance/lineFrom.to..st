utility
lineFrom: fromPoint to: toPoint
	| l |
	l := super lineFrom: fromPoint to: toPoint.
	shapes
		add: l from;
		add: l to;
		add: l.
	^ l