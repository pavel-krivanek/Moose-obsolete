computing
labelShape
	labelShape ifNotNil: [ ^ labelShape ].
	labelShape := RTLabel new
		text: label;
		color: color;
		height: fontSize.
	^ labelShape