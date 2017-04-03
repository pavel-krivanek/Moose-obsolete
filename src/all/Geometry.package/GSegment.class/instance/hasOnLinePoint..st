properties
hasOnLinePoint: p
	| e k edges tr v|
	(self v1 =~ p or:[ self v2 =~ p] ) 
		ifTrue:[^true]
		ifFalse:[
			tr := ( GTriangle with: p with: self v1 with: self v2 ).
			edges:= tr edges.
			k := edges detectMax: [:ed | ed length].
			e := (1/2)*(
					(( self v1 x - self v2 x ) * ( p y - self v2 y )-
					(( self v1 y - self v2 y ) * ( p x - self v2 x )))
					abs
			/k length).
			v := tr vertices detect:[ :vi |  vi~= k v1 and:[ vi ~= k v2 ]].
			^ "k asLine hasPoint: v withApproximation: e."
			(k dist: v) lesserOrDifferentThan: (2*e)] 
	
