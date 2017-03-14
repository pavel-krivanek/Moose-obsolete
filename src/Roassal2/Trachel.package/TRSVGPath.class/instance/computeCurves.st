private
computeCurves
	"This method parse the path"
	"
	A complete description may be found on http://www.w3.org/TR/SVG/paths.html#PathData
	So far, we only consider the following SVG tokens:
	
	M = Move to - absolute
	m = Move to - relative
	
	Z or z = Close path
	
	L = Line to - absolute
	l = Line to - relative
	
	The description of SVG path, says that M and m may accept more than one coordinates. In practices, this is rarely the case. 	
	"
	| pathData |
	pathData := ASPathConverter new stream: pathString readStream.
	curves := pathData convertPathData.