initialize-release
initialize
	super initialize.
	input := String new.
	output := String new.
	stream := PPBrowserStream on: input