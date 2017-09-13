running
setUp
	| source target |
	super setUp.
	source := OPUmlLabel new.
	target := OPUmlLabel new.
	element source: source.
	element target: target