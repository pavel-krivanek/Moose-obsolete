*petitislands
acceptsEpsilon
	"
		return true, if parser can accepts epsilon without a failure.
		
		Use #neverFails if parser never fail, no matter what is the input.
		The #isNullable semantics is a mystery for me. I think it is something 
		like acceptsEpsilon and is used for first/set computation.
	"
	^ self subclassResponsibility