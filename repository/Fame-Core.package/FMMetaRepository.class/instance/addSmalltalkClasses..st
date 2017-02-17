adding
addSmalltalkClasses: classes 
	| builder |
	builder := FMPragmaProcessor new.
	builder queue: classes.
	builder run.
	self addAll: builder elements