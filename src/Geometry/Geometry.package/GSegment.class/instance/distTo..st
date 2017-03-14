properties
distTo: point
	^ (( 
		((self v2 y - self v1 y) * point x) - ((self v2 x - self v1 x) * point y) + ((self v2 x) * (self v1 y )) - ((self v1 x) * (self v2 y ))
		)abs)
	/
		((  (self v1 y - self v2 y) * (self v1 y - self v2 y) 
		+
			((self v1 x - self v2 x) * (self v1 x - self v2 x))
		 )sqrt)
	
