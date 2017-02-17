testing
isStandaloneExternal
	"Returns true if any declaration being parsed is considered
	an external markup declaration in a standlone document:
	'[Definition: An external markup declaration is defined as a markup
	declaration occurring in the external subset or in a parameter entity
	(external or internal, the latter being included because non-validating
	processors are not required to read them).]'"

	self subclassResponsibility