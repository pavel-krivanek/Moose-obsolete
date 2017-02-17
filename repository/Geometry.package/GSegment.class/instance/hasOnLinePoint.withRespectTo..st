properties
hasOnLinePoint: p withRespectTo: vert
	| e k edges tr v|
	(self v1 =~ p or:[ self v2 =~ p] ) 
		ifTrue:[^ true]
		ifFalse:[ "(vert x < self v2 x)
			ifTrue:[
				(vert x < p x and:[ p x < self v2 x ])
				or:[ (vert x < self v2 x and:[ p x > self v2 x ])]]"
			((
			( p x between: vert x and: self v2 x)and:
			[ p y between: vert y and: self v2 y]) 
		or:[ (self v2 x between: vert x and: p x) and:
			(self v2 y between: vert y and: p y)])
				ifFalse:[^ false]
				ifTrue:[
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
					(k dist: v) <=~ (2*e)]] 
	
