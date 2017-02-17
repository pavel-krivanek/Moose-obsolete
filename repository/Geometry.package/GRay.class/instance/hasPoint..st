properties
hasPoint: aPoint
^ (( origin - direction ) signFuz = ( origin - aPoint ) signFuz  or:
					[ origin = aPoint ])
 
