copying
postCopy
	super postCopy.

	elementClassMap := elementClassMap copy.

	"each val is either a class or an OrderedCollection, which needs
	to be copied so new mappings in either the copy or original don't
	effect the other"
	elementClassMap associationsDo: [:each |
		each value isCollection
			ifTrue: [each value: each value copy]].