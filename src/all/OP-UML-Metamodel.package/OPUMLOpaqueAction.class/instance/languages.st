accessing
languages
	"If provided, a specification of the language used for each of the body Strings."
	^ languages ifNil: [ languages := OrderedCollection new ]