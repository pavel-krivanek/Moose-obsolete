accessing
languages
	"Languages the body strings use in the same order as the body strings."
	^ languages ifNil: [ languages := OrderedCollection new ]