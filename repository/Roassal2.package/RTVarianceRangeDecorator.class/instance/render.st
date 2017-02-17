drawing
render
	| deviationData avgData xData svg k path |
	avgData := self datasets first elements collect: [ :e | (avg value: e model) asFloat ].
	deviationData := self datasets first elements collect: [ :e | (sd value: e model) asFloat ].
	xData := self datasets first elements collect: [ :e | (x value: e model) asFloat ].
	path := OrderedCollection new.
	k := builder getPixelPositionOf: xData first @ (avgData first + deviationData first).
	path add: #M -> k.
	(2 to: deviationData size)
		do: [ :i | 
			| p |
			p := (avgData at: i) + (deviationData at: i).
			k := builder getPixelPositionOf: (xData at: i) @ p.
			path add: #L -> k ].
	k := builder getPixelPositionOf: xData last @ (avgData last - deviationData last).
	path add: #L -> k.
	(1 to: deviationData size - 1)
		reverseDo: [ :i | 
			| p |
			p := (avgData at: i) - (deviationData at: i).
			k := builder getPixelPositionOf: (xData at: i) @ p.
			path add: #L -> k ].
	k := builder getPixelPositionOf: xData first @ (avgData first + deviationData first).
	path add: #L -> k.
	path add: #Z -> nil.
	svg := RTSVGPath new
		color: color;
		borderWidth: 0;
		path: (self pathToString: path);
		element.
	builder view add: svg