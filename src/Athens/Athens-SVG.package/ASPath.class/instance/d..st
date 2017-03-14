as yet unclassified
d: aString 

"	d = 'path data'
	A path is defined by including a 'path' element which contains a d=(path data) attribute, where the d attribute contains the moveto, 
	line, curve (both cubic and quadratic Béziers), arc and closepath instructions.
"

	| conv |
	conv := ASPathConverter new stream: aString readStream.

	pathData := conv convertPathData.
	bbox := conv bbox.