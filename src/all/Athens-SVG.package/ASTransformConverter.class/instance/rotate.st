operations
rotate
	"
rotate(<rotate-angle> [<cx> <cy>]), which specifies a rotation by <rotate-angle> degrees about a given point.
If optional parameters <cx> and <cy> are not supplied, the rotate is about the origin of the current user coordinate system. The operation corresponds to the matrix [cos(a) sin(a) -sin(a) cos(a) 0 0].
If optional parameters <cx> and <cy> are supplied, the rotate is about the point (<cx>, <cy>). The operation represents the equivalent of the following specification: translate(<cx>, <cy>) rotate(<rotate- angle>) translate(-<cx>, -<cy>).
	
	"
	| angle cx cy |
	
	angle := self nextNumber.
	cx := self nextNumber.
	cy := self nextNumber.

	cx ifNil: [
		transform rotateByDegrees: angle negated .		
	] ifNotNil: [
		"if cx is given, cy should also be present"
		self assert: cy notNil. 
	
		transform translateX: cx Y: cy. 
		transform rotateByDegrees: angle negated.		
		transform translateX: cx negated  Y: cy negated. 
	].

