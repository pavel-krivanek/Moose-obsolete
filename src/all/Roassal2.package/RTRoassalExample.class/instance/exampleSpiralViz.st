sources
exampleSpiralViz
	"Simple visualization in which each class is a curve. How the curve varies indicates variations in the methods set"

	| classes v angle shape incr |
	classes := RTShape withAllSubclasses.
	classes := classes select: [ :c | c methods size > 1 ].
	v := RTView new.
	angle := 0.
	classes
		do: [ :c | 
			shape := TRBezierShape new.
			shape color: Color black.
			shape
				width: 2.5;
				strokePaint: Color random.
			incr := 0.
			angle := angle + (360 / classes size).
			shape
				points:
					(c methods
						collect: [ :m | 
							incr := incr + (angle cos @ angle sin * 10).
							(m numberOfLinesOfCode log * 25) @ (m sourceCode size log * 25)
								+ incr ]).
			v canvas addShape: shape ].
	^ v