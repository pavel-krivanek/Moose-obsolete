accessing
bookmarkAs: aString
	"Adds myself in the cache of the mooseModel and mark it as a bookmark"
	| group |
	group := self asMooseGroup description: aString.
	group isBookmarked: true.
	^ self mooseModel add: group asBookmark: aString