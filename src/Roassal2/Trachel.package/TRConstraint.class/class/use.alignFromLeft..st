public - aligning
use: aShape alignFromLeft: shapes
	| topX newX |
	self deprecated: 'Please, use RTAlignement instead'.
	topX := aShape encompassingRectangle topLeft x.
	shapes do: [ :s |
		newX := topX + (s encompassingRectangle width / 2).
		s translateTo: newX @ s position y
	]