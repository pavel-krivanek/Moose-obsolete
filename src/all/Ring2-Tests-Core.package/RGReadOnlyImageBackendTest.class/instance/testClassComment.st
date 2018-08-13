tests
testClassComment

	| env comment |
	
	env := RGEnvironment new.
	env backend: (RGReadOnlyImageBackend for: env).
	
	comment := (Point asRingMinimalDefinitionIn: env) comment.
	
	comment content notEmpty.
	comment author notEmpty.
	comment time > DateAndTime new.
	comment time <= DateAndTime now.
	
	