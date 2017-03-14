as yet unclassified
center
	| min max x y |
	min := vertices min.
	max := vertices max.
	x := (min x + max x)/2.0.
	y := (min y + max y)/2.0.
	^ x @ y
	
