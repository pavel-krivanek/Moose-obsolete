operations
matrix
	"matrix(<a> <b> <c> <d> <e> <f>), which specifies a transformation in the form of a transformation matrix of six values. matrix(a,b,c,d,e,f) is equivalent to applying the transformation matrix [a b c d e f]."
	
	| m |

	m := AthensAffineTransform new.
"
Athens matrix: 

| sx   shx   x   |
| shy sy     y   |
|  0     0     1   | "	

"
SVG matrix: 
| a   c   e   |
| b   d  f  |
|  0     0     1   | "	
	

"a"	self skipBlanks.
	m sx: self nextNumber.

"b"	self skipBlanksAndComma.
	m shy: self nextNumber.

"c"	self skipBlanksAndComma.
	m shx: self nextNumber.

"d"	self skipBlanksAndComma.
	m sy: self nextNumber.

"e"	self skipBlanksAndComma.
	m x: self nextNumber.
	
"f"	self skipBlanksAndComma.
	m y: self nextNumber.

	transform multiplyBy: m
	