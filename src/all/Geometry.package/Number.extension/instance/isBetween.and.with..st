*Geometry
isBetween: a and: b with: eps 
	|mi ma|
	(a =~ self or:[ b =~ self or:[ a + (2 * eps) =~ self or:[ a - (2 * eps) =~ self or:[ b + (2 * eps) =~ self or:[ b - (2 * eps) =~ self ]]]]] )
		ifTrue:[ ^ true]
		ifFalse:[
			mi := a min: b. 
			ma := a max: b. 
	( self + (2 * eps) >=~ mi and:[ self + (2 * eps) <=~ ma ] )
	ifTrue:[ ^ true]
	ifFalse:[ 		
			^  self between: mi and: ma ]] "( ( self - mi ) abs >=~ eps ) and:[ ( ma - self ) abs >=~ eps ]"