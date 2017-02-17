properties
hasOnLinePoint: p withRespectTo: vert withApprox: apro
	| e k edges tr v eps |
	(self v1 =~ p or:[ self v2 =~ p] ) 
		ifTrue:[^ true]
		ifFalse:[ 
			tr := ( GTriangle with: p with: self v1 with: self v2 ).
			edges := tr edges.
			k := edges detectMax: [:ed | ed length].
			eps := (1/2)*(
							(( self v1 x - self v2 x ) * ( p y - self v2 y )-
							(( self v1 y - self v2 y ) * ( p x - self v2 x )))
							abs
					/k length).
			e := apro min: eps.
			(((
			( p x isBetween: vert x and: self v2 x with: e)and:
			[ p y isBetween: vert y and: self v2 y with: e]) 
		or:[ (self v2 x isBetween: vert x and: p x with: e) and:
			(self v2 y isBetween: vert y and: p y with: e)]) "and:[ self asLine hasPoint: p withApproximation: e ]")
				ifFalse:[^ false]
				ifTrue:[
					"tr := ( GTriangle with: p with: self v1 with: self v2 ).
					edges:= tr edges.
					k := edges detectMax: [:ed | ed length].
					e := (1/2)*(
							(( self v1 x - self v2 x ) * ( p y - self v2 y )-
							(( self v1 y - self v2 y ) * ( p x - self v2 x )))
							abs
					/k length)."
					v := tr vertices detect:[ :vi |  vi~= k v1 and:[ vi ~= k v2 ]].

					(k dist: v) <=~ (2*e) 
						ifTrue:[ ^ true"(k asLine hasPoint: v withApproximation: e)"]
						ifFalse:[ ^ false]
					]]
	
