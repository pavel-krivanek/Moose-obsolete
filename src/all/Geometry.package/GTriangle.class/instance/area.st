properties
area
	| semiperimeter|
	semiperimeter := self semiperimeter.

	^ (self edges 
		inject: semiperimeter
		into: [ :subProduct :edge |
			(semiperimeter - edge length) * subProduct ]) sqrt