hooks
updateFor: edge trachelShape: trachelShape
	(self isSelfLoopAllowedFor: edge) 
		ifFalse: [ ^ self ].
	line updateFor: edge trachelShape: edge trachelShape shapes first.
	head updateFor: edge trachelShape: edge trachelShape shapes second