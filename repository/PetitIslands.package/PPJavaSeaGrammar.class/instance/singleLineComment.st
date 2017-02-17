comments and strings
singleLineComment
	| end |
	end := #newline asParser.
	^ ('//' asParser, (end negate star), end)