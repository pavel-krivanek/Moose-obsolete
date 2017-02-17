handling - content
characters: aString
	"building the string this way is simpler and performs as well in tests
	as using a write stream"
	characters :=
		characters
			ifNil: [aString]
			ifNotNil: [characters, aString]