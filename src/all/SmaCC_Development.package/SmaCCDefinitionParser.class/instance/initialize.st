initialize-release
initialize
	super initialize.
	self grammar: SmaCCGrammar new.
	defaultClasses := OrderedCollection new