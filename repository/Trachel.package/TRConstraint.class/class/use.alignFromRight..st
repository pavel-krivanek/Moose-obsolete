public - aligning
use: aShape alignFromRight: shapes
	| topX newX |
	self deprecated: 'Please, use RTAlignement instead'.
	topX := aShape encompassingRectangle topRight x.
	shapes do: [ :s |
		newX := topX - (s encompassingRectangle width / 2).
		s translateTo: newX @ s position y
	]