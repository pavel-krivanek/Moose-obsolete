instance creation
class: aBehavior
	"Matches parsers that are of the class aBehavior."

	^ self on: [ :parser :context | parser class = aBehavior ]