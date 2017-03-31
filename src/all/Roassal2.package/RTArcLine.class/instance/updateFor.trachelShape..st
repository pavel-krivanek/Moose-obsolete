rendering
updateFor: edge trachelShape: trachelShape
	(self isSelfLoopAllowedFor: edge) ifFalse: [ 
		^ trachelShape ].
	self updateLineFor: edge trachelShape: trachelShape shapes first.
	head updateFor: edge trachelShape: trachelShape shapes second.
	^ trachelShape