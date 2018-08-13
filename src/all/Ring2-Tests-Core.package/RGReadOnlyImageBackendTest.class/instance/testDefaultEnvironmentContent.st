accessing
testDefaultEnvironmentContent

	| env |
	
	env := RGEnvironment unnamed.
	env backend: (RGReadOnlyImageBackend for: env).
	
	self testDefaultContentFor: env.
	
			
	
	
