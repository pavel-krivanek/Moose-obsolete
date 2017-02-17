accessing
corners
	| r |
	r := borderRadius.
	^ Array
		with:
			(GCircleArc
				center: rectangle topRight + (r negated @ r)
				radius: r
				startAngle: 0
				endAngle: Float halfPi)
		with:
			(GCircleArc
				center: rectangle topLeft + (r @ r)
				radius: r
				startAngle: Float halfPi
				endAngle: Float pi)
		with:
			(GCircleArc
				center: rectangle bottomLeft + (r @ r negated)
				radius: r
				startAngle: Float pi
				endAngle: Float threePi / 2)
		with:
			(GCircleArc
				center: rectangle bottomRight + (r negated @ r negated)
				radius: r
				startAngle: Float threePi / 2
				endAngle: Float twoPi)