comparing
= anEllipse
	self species = anEllipse species
		ifFalse: [ ^ false ].
	^ self center = anEllipse center & (self a = anEllipse a) & (self b = anEllipse b)