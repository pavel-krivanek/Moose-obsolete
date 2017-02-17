instance creation
on: aStringOrStream
	"Returns a new parser on the string or stream argument but doesn't parse it.

	Can be used to configure a parser with 'configuring' messages before
	parsing with parseDocument."

	^ self new on: aStringOrStream