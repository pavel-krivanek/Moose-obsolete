public - aligning
alignFromLeft: shapes
	| leftMostElement |
	self deprecated: 'Please, use RTAlignement instead'.
	shapes ifEmpty: [ ^ self ].
	leftMostElement := shapes inject: shapes anyOne into: [ :maxS :s | 
								maxS encompassingRectangle topLeft x <= s encompassingRectangle topLeft x
										ifTrue: [ s ] ifFalse: [ maxS ] ].
	self use: leftMostElement alignFromLeft: shapes