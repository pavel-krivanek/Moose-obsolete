accessing
sparklineValues: ablock size: aNumber
	| shapes |
	shapes := self shape shape allShapes.
	shapes first size: aNumber.
	shapes second
		width: aNumber;
		height: aNumber;
		values: ablock.