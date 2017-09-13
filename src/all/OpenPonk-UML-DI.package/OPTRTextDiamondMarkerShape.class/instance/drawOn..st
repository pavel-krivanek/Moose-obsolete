drawing
drawOn: athensCanvas
	| font vector r u unit middle endPoint |
	from = to
		ifTrue: [ ^ self ].
	athensCanvas pathTransform
		restoreAfter: [ athensCanvas setShape: self path.
			athensCanvas setPaint: self fillColor.
			athensCanvas draw.
			(athensCanvas setStrokePaint: strokePaint) width: self width.
			athensCanvas draw ].
	font := TRLabelShape getFontForSize: 9.
	font := font emphasized: TextEmphasis bold emphasisCode.
	vector := self to - self from.
	r := vector r.
	r = 0
		ifTrue: [ ^ false ].
	u := vector normal.
	unit := vector / r.
	endPoint := self to - (vector * (1 - percentage)).
	middle := endPoint - (unit * size).
	athensCanvas pathTransform
		restoreAfter: [ athensCanvas pathTransform
				translateBy: middle;
				translateBy: ((size negated / 2) @ (font height / 4)) asFloatPoint.
			athensCanvas setFont: font.
			athensCanvas setPaint: self fillColor negated.
			athensCanvas drawString: text ]