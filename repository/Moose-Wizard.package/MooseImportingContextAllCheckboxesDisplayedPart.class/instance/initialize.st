initialize-release
initialize

	super initialize.
	self contents: { self newGroupboxNamed: 'Context' With: contextFrame dialogWindow contentMorph .}
	