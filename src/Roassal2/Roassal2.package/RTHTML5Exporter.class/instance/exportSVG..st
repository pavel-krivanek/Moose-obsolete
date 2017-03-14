helpers
exportSVG: aView
	| visitor |

	visitor := RTJavascriptVisitor new.
	visitor maxSize: self maxSizeForString.
	visitor exportFixedShapes: self exportFixedShapes.
	visitor stream: stream.
	visitor visitView: aView.