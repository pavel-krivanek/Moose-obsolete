instance creation
kind: aBehavior
	"Matches parsers that are of the class aBehavior or one of its subclasses."

	^ self on: [ :parser :context | parser isKindOf: aBehavior ]