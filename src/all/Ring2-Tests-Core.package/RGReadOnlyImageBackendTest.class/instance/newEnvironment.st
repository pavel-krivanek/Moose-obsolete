accessing
newEnvironment

	| env | 
	
	env := RGEnvironment unnamed.
	env backend: (RGReadOnlyImageBackend for: env).
	
	^ env