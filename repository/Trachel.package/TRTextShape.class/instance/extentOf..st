private
extentOf: aText
	| lines metrics maxWidth |
	lines := aText lines.
	lines ifEmpty: [ ^ 0 @ 0 ].
	metrics := self fontMetrics.
	maxWidth := lines
		max: [ :line | 
			| e |
			e := metrics extentsOf: line.
			e width + e x_bearing ].
	^ maxWidth asFloat @ (lines size * metrics fontHeight)