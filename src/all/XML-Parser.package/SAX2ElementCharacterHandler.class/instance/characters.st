accessing
characters
	"This returns the combined #characters: events handled by the receiver
	as a string."

	^ characters ifNil: [characters := '']