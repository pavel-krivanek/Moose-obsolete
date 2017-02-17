drawing
drawOn: athensCanvas
	"self drawEncompassingRectangleOn: athensCanvas."
	athensCanvas pathTransform
		restoreAfter:
			[ | advance cls |
			cls := TRPlatform current textEmphasisClass.
			athensCanvas pathTransform
				multiplyBy: matrix asFloatTransform;
				translateBy: ((self textWidth / -2) @ (self textHeight / 2)) asFloatPoint;
				translateBy: (0 @ self descent negated) asFloatPoint.
			athensCanvas setFont: font.
			athensCanvas setPaint: color.
			advance := athensCanvas drawString: text.
			(emphasis includes: cls underlined)
				ifTrue: [ athensCanvas drawShape: (0 @ 1 extent: advance x @ 1) ].
			(emphasis includes: cls struckOut)
				ifTrue:
					[ athensCanvas pathTransform
						translateBy: (0 @ (self textHeight / 4) negated) asFloatPoint.
					athensCanvas drawShape: (0 @ 1 extent: advance x @ 1) ] ]