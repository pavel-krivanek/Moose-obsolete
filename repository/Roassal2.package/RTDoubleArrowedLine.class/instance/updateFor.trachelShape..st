rendering
updateFor: edge trachelShape: trachelShape
	(self isSelfLoopAllowedFor: edge) ifFalse: [ ^ self ].
	line updateFor: edge trachelShape: edge trachelShape shapes first.
	headStart updateFor: edge trachelShape: edge trachelShape shapes second.
	headEnd updateFor: edge trachelShape: edge trachelShape shapes third