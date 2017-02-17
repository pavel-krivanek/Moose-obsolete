instance creation
name: aString
	"Matches parsers with the name aString."

	^ self on: [ :parser :context | parser name = aString ]