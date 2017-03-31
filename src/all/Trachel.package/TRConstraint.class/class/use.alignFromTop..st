public - aligning
use: aShape alignFromTop: shapes
	| topY newY |
	self deprecated: 'Please, use RTAlignement instead'.
	topY := aShape encompassingRectangle topCenter y.
	shapes do: [ :s |
		newY := topY + (s encompassingRectangle height / 2).
		s translateTo: s position x @ newY
	]