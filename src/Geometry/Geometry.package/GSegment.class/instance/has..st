properties
has: p
	(self asLine hasPoint: p)
	ifFalse:[^false]
	ifTrue:[ ^((
		((self v1 x <= p x and:[ p x <= self v2 x]) 
						or:[ self v2 x <= p x and:[ p x <= self v1 x]]))
		and:[ 
			((self v1 y <= p y and:[ p y <= self v2 y]) 
						or:[ self v2 y <= p y and:[ p y <= self v1 y]])])
		]
