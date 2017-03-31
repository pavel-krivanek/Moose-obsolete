accessing
lineBreak: aCharacterOrString
	"linebreak chars (CR/LF) in attribute/entity values and in args to
	the #string: and #with: messages are replaced with whatever char/string
	this is set to"

	lineBreak := aCharacterOrString asString